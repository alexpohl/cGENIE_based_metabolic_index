# A. Pohl, 8 Sept 2021
# Modified after [https://github.com/richardstockey/cGENIE-metabolic_index.extinction/blob/main/Viability%20extractions/Viability_extraction_fm0450.CO2.O2_0.34EFD_global.no.poles.R]
# Goal: design a function that computes the metabolic index for a genie experiment
# Input: cGENIE experiment
# Output: array of living/dead ecophysiotypes

# [24 Feb 2022]  :: version 0.5 :: saving to 'output'; adding possibility to input 3D (PBDB) mask 
# ... Caution: mask must have number of vertical levels matching the requested 'vertical_dimension'
# Checked on Feb 28: fully backward-compatible when using mask == 'shelves'
# [13 Jan 2022]  :: version 0.4 :: adding characteristics of ecotypes in output nc file
# [29 Sept 2021] :: version 0.3 :: also saves the presence(1)/absence(NA) map for each individual ecotype in the netcdf file
# [27 Sept 2021] :: version 0.2 :: also saves grid_topo (for plotting purposes)
# [20 Sept 2021] :: version 0.1 :: possibility to use only levels 2:3

# script version: 
MI_version = '_v0' # is the version published by Rich PNAS; this versioning tracking the scientific content, not the version numbers above

library(optparse)

# looks like flag 'h' is already used (probably for help) 

option_list = list(
  make_option(c("-a", "--path"), type="character", default=NULL, 
              help="genie dir path", metavar="character"),
  make_option(c("-b", "--dir"), type="character", default=NULL,
              help="genie dir name", metavar="character"),
  make_option(c("-c", "--year"), type="numeric", default=NULL,
              help="genie year", metavar="numeric"),
  make_option(c("-d", "--neco"), type="numeric", default=1000.,
              help="number of ecotypes", metavar="numeric"),
  make_option(c("-e", "--vertical_dimension"), type="character", default=FALSE,
              help="defining depth integration limit", metavar="character"),
  make_option(c("-f", "--mask"), type="character", default='shelves',
              help="mask used to activate ocean grid points for MI calculation", metavar="character"),
  make_option(c("-g", "--exclude_poles"), type="logical", default=TRUE,
              help="do exclude high latitudes (poles)", metavar="logical"),
  make_option(c("-i", "--output_netcdf"), type="logical", default=TRUE,
              help="output nc file", metavar="logical"),
  make_option(c("-j", "--set_seed"), type="numeric", default=1993,
              help="set seed number", metavar="numeric")
) 

opt_parser = OptionParser(option_list=option_list)
opt = parse_args(opt_parser)

# ----------------- read args ------------------

# Set GENIE output direvtory
input_dir = opt$path
genie_exp_dir = opt$dir
genie_yr = opt$year

# Metabolic Index properties
n_ecotypes = opt$neco

# Options
vertical_integration = opt$vertical_dimension
do_mask = opt$mask # 'shelves', 'global', or nc file name
do_exclude_poles = opt$exclude_poles
do_netcdf = opt$output_netcdf
seed_number = opt$set_seed

# ---------------------------------------------

library(AquaEnv)
library(dplyr)
library(ncdf4)
library(reshape2)
library(RNetCDF)

# Set Metabolic Index output directory
output_dir = paste0(getwd(),'/output/')

# Set file naming conventions based on *options*
# "vertical_integration"
if(vertical_integration == "surface"){
  vertical_mask = "_surface"
  zdim_min = 1 
  zdim_max = 1 
}else if(vertical_integration == "subsurface"){
  vertical_mask = "_subsurface"
  zdim_min = 2
  zdim_max = 2
}else if(vertical_integration == "deepocean"){
  vertical_mask = "_deepocean"
  # defined below
}else if(vertical_integration == "upperocean"){
  vertical_mask = "_upperocean"
  zdim_min = 1
  zdim_max = 3
}
# "do_mask"
if(do_mask == 'shelves'){
  ocean.mask <- "_shelves_" # empty for backward compatibility
}else if(do_mask == 'global'){
  ocean.mask <- "_global_" # global is not a read-in variable below, just for record keeping
} else{
  ocean.mask <- paste0('_', substring(do_mask, 1, nchar(do_mask)-3),'_') # removing '.nc'
}

# "do_exclude_poles"
if(do_exclude_poles == TRUE){
  poles.mask = "nopoles"
} else{
  poles.mask = "global" # global is not a read-in variable below, just for record keeping
}

# Source functions from Hofmann et al. 2011 Deep Sea Research (set directory if necessary)
source("sources/Hofmann_functions.R")

################################
## Define parameters for metabolic index model
################################

# Set number of ecophysiotypes in model - abbreviated to 'ecotype' 
# throughout this script for concision
init.ecotypes <- n_ecotypes

# set seed for random number generation
set.seed(seed_number)

# input Penn et al. 2018 parameter values
u_A <- 3.01 # log(atm ^-1)
sig_A <- 0.49 # log(atm ^-1)

u_C <- 1.10 # unitless
sig_C <- 0.42 # unitless

u_E <- 0.41 # eV
sig_E <- 0.29 # eV

# sample Ao values from PDF (log-normal distribution)
A0.xxx <- rlnorm(init.ecotypes, meanlog = u_A, sdlog = sig_A)

# sample Eo values from PDF (normal distribution)
E0.xxx <- rnorm(init.ecotypes, mean = u_E, sd = sig_E)

# sample phi crit values from PDF (log-normal distribution)
phi_crit.xxx <- rlnorm(init.ecotypes, meanlog = u_C, sdlog = sig_C)

# Set Penn et al. 2018 constants
kB <- 8.61733326e-5
Tref <- 15+273.15

# Initiate vectors and dataframes
ecotypes.summary <-  data.frame(ecotype=double(), cells = double())
ecotypes.summary.short <-  data.frame(ecotypes.number = double(), eq.temp=double())

################################
## Read cGENIE output
################################

Nc = open.nc(paste0(input_dir, genie_exp_dir, "/biogem/fields_biogem_3d", ".nc"))

## =============================================================
## Extract annual means of key variables
## =============================================================
lat <- var.get.nc(Nc, "lat") # units: degrees north
lat.edges <- var.get.nc(Nc, "lat_edges")
lon <- var.get.nc(Nc, "lon") # units: degrees east
lon.edges <- var.get.nc(Nc, "lon_edges")
depth <- var.get.nc(Nc, "zt") # units: metres
depth.edges <- var.get.nc(Nc, "zt_edges") # units: metres
times <- var.get.nc(Nc, "time") # units: year mid-point
oxy <- var.get.nc(Nc, "ocn_O2") # units: mol kg-1
sal <- var.get.nc(Nc, "ocn_sal") # units: PSU
temp <- var.get.nc(Nc, "ocn_temp") # units: degrees C
topo <- var.get.nc(Nc, "grid_topo") # units: meters

# =============================================================
# No density output from cGENIE - so here we use seadensity(S,t) function from Hofmann et al 2011
# Seadensity takes S in PSU and t in degrees C so no change from cGENIE required
# =============================================================

## =============================================================
## set desired time bin
## =============================================================

# time <- as.numeric(length(time)) # (last of model simulation)
time = which(times == genie_yr) # based on year provided in command line

## =============================================================
## set desired dimensions of array
## =============================================================

xdim <- as.numeric(length(lon))
ydim <- as.numeric(length(lat))
tdim <- as.numeric(length(times))
zdimtot <- as.numeric(length(depth))

if(vertical_integration == "deepocean"){
  zdim_min = 1
  zdim_max = as.numeric(length(depth))
}
zdimused = length((seq(zdim_min,zdim_max,1)))

if(do_exclude_poles == TRUE){
    ymin = 2
    ymax = ydim-1
} else {
    ymin = 1
    ymax = ydim
}

## =============================================================
##  save mean equatorial sea surface temperature for plotting
## =============================================================
eq.temp <- mean(temp[,18:19,1,time], na.rm=T)

if(do_mask == 'shelves'){

    ## =============================================================
    ## if only evaluating shelf settings, apply mask to cut out shelves only
    ## the continents as NAs.
    ## =============================================================

    shelf_temp = array(data = NA, dim = c(xdim,ydim,zdimtot,tdim))
    # looping over grid cells
    for(z in zdim_min:zdim_max){
        extended_temp = rbind(temp[1,,z,time], temp[,,z,time], temp[xdim,,z,time]) 
        for(x in 2:(xdim+1)){
            for(y in ymin:ymax){
            if (is.na(extended_temp[x,y]) == FALSE){ # only dealing with ocean points
                if (y == 1){
                    vdsrch_x = c(1, 0, -1, -1, 1)
                    vdsrch_y = c(1, 1, 1, 0, 0)
                } else if (y==ydim){
                    vdsrch_x = c(-1, -1, 0, 1, 1)
                    vdsrch_y = c(0, -1, -1, -1, 0)
                }else{
                    vdsrch_x = c(1, 0, -1, -1, -1, 0, 1, 1)
                    vdsrch_y = c(1, 1, 1, 0, -1, -1, -1, 0)
                }
                neighbor_values = vector()
                for (i in seq(1,length(vdsrch_x))){
                    neighbor_values = c(neighbor_values,extended_temp[x+vdsrch_x[i],y+vdsrch_y[i]])
                    }
                    if (NA %in% neighbor_values){shelf_temp[x-1,y,z,time] = temp[x-1,y,z,time]}
           }
     }}}
    temp = shelf_temp

}else if(do_mask == 'global'){

    temp = temp 

} else{

    mask_temp = array(data = NA, dim = c(xdim,ydim,zdimtot,tdim))
    # reading nc mask
    Mask_nc = open.nc(paste0("./masks/", do_mask))
    PBDB_entries <- var.get.nc(Mask_nc, "PBDB_entries") # 36 36  3
    #print(dim(PBDB_entries))
    for(z in zdim_min:zdim_max){
        for(x in 1:(xdim)){
            for(y in ymin:ymax){
                if (PBDB_entries[x,y,z] > 0){mask_temp[x,y,z,time] = temp[x,y,z,time]}
  }}}
    temp = mask_temp
}


# to save in nc file
oxy2 = oxy; oxy2[is.na(temp)] = NA

## =============================================================
## make array of pO2 - units are atm
## =============================================================
oxygen_umol_kg <- oxy*10^6  # convert to umol/kg from mol/kg

depth_array <- array(rep(depth, each=xdim*ydim), dim=c(xdim,ydim,zdimtot))
lat_array <- array(rep(lat, each = xdim, times = zdimtot), dim=c(xdim,ydim,zdimtot))
## pass oxygen, salinity, temp and depth to Hoffman et al. 2011's pO2 function
pO2_array <- pO2(O2=oxygen_umol_kg[,,,time], S=sal[,,,time], t=temp[,,,time], d=depth_array, lat=lat_array)/1000

## =============================================================
## Convert temp to Kelvin
## =============================================================

temp_K <- temp[,,,time]+273.15

## =============================================================
## Habitat viability model - calculate viability per cGENIE model cell
## =============================================================

# initiate array for habitat viability (only saved if NetCDF saving activated)
habitat_viability <- array(dim=c(xdim,ydim,zdimused))
ecotype_viability <- array(dim=c(xdim,ydim,zdimused,n_ecotypes))

# initiate data frame for viable ecotype summary (one per cGENIE simultion)
phi.crit.xxx.summary <-  data.frame(A0.xxx = double(), phi_crit.xxx=double(), temp_K=double(), pO2=double(), phi.xxx=double(), ecotype=double(), depth=double())

# loop through by cell (we are evaluating xxx physiological ecotypes per cell)
totcounter = 1
for(x in 1:xdim){
  for(y in ymin:ymax){ # we exclude polar environments
    z_counter = 1
    for(z in zdim_min:zdim_max){
      pO2.cell <- pO2_array[x,y,z]
      temp.cell <- temp_K[x,y,z]

      if(is.na(pO2.cell) == TRUE | is.na(temp.cell) == TRUE){
        # Do nothing! If these are true - then this is land/crust!

      }else{
        # Calculate phi values for all xxx ecotypes (eqn. from Penn et al. 2018)
        phi.xxx <- A0.xxx * (pO2.cell/(exp((-E0.xxx/kB)*((1/temp.cell)-(1/Tref)))))

        # Combine relevant data into a dataframe
        phi.cell <- cbind(A0.xxx, phi_crit.xxx, rep(temp.cell, init.ecotypes), rep(pO2.cell, init.ecotypes), phi.xxx, seq(1:init.ecotypes), depth[z])

        # Name variables in cell ecotypes dataframe so that we can refer to them easily
        names(phi.cell) <- c("A0.xxx", "phi_crit.xxx", "temp_K", "pO2", "phi.xxx", "ecotype", "depth")

        # Filter the cell ecotypes dataframe to only include viable ecotypes (phi > phi_crit)
        phi.crit.xxx <- phi.cell %>%
                        as.data.frame()  %>%
                        filter(phi.xxx >= phi_crit.xxx)

        # populating ecoptype viability array
        ix = which(phi.xxx >= phi_crit.xxx)
        ecotype_viability[x,y,z_counter,ix] = 1 

        # Add habitat viability (percentage of total ecotypes that are viable in a given cell) to summary array (for building NetCDFs if so inclined)
        habitat_viability[x,y,z_counter] <- nrow(phi.crit.xxx)/init.ecotypes*100

        # Add viable ecotypes and associated details to summary dataframe for specific cGENIE simulation
        # This has been vectorized (at the loss of some readability) for speed
        if(nrow(phi.crit.xxx)>0){
        phi.crit.xxx.summary[(nrow(phi.crit.xxx.summary)+1):(nrow(phi.crit.xxx.summary)+nrow(phi.crit.xxx)) , ] <- phi.crit.xxx
        totcounter = totcounter + 1
        }
      }
      z_counter = z_counter + 1
    }}}

# Tally the number of cells that each ecotype can live in
phi.crit.xxx.summary.condensed <- phi.crit.xxx.summary %>%
                                  group_by(ecotype) %>%
                                  tally

# Add this tally to a summary frame - again, this has been vectorized (at the loss of some readability) for speed
if(nrow(phi.crit.xxx.summary.condensed)>0){
i <- nrow(ecotypes.summary)+1
j <- nrow(ecotypes.summary)+nrow(phi.crit.xxx.summary.condensed)
ecotypes.summary[i:j , 1:2] <- phi.crit.xxx.summary.condensed
}

# Summarise this data further for habitat viability plots (1 point per cGENIE simulation) - here add equatorial temperature for plotting.
row <- nrow(ecotypes.summary.short)+1
ecotypes.summary.short[row , 1] <- nrow(phi.crit.xxx.summary.condensed)
ecotypes.summary.short[row , 2] <- eq.temp

## =============================================================
## Make NetCDF (if option selected towards beginning of script)
## =============================================================

outname_radical = paste0(genie_exp_dir, vertical_mask, ocean.mask, poles.mask)
if(n_ecotypes != 1000){
    outname_radical = paste0(outname_radical, '_', as.character(n_ecotypes))
}
if(seed_number != 1993){
    outname_radical = paste0(outname_radical, '_seed', as.character(seed_number))
}

if (do_netcdf == TRUE){
    # Define the name of netcdf you will make below
    filename <- paste0(output_dir, outname_radical, MI_version, "_habitat_viability.nc")

    # Define dimensional variables ready to add them to your array
    # define values
    xvals <- lon
    xvals.edges <- lon.edges
    yvals <- lat
    yvals.edges <- lat.edges
    # create dimensions
    lon1 <- ncdim_def("lon", "degrees_east", xvals, create_dimvar=TRUE)
    lon1.edges <- ncdim_def("lon_edges", "", 1:length(xvals.edges), create_dimvar=FALSE)
    lat2 <- ncdim_def("lat", "degrees_north", yvals, create_dimvar=TRUE)
    lat2.edges <- ncdim_def("lat_edges", "", 1:length(xvals.edges), create_dimvar=FALSE)
    depth3 <- ncdim_def("Depth", "meters", depth[zdim_min:zdim_max], create_dimvar=TRUE)
    ecotype_dim <- ncdim_def("Ecotype", "ecotype #", 1:n_ecotypes, create_dimvar=TRUE)
    mv <- NA #missing value to use (for land/crust areas)

    # Create a variable (with dimensions defined above)
    var_via <- ncvar_def("habitat_viability", paste(expression("(%)")), list(lon1, lat2, depth3), longname="Habitat Viability", mv)
    var_eco_via <- ncvar_def("ecotype_viability", paste(expression("1 = presence")), list(lon1, lat2, depth3, ecotype_dim), longname="Ecotype Viability", mv)
    var_A0 <- ncvar_def("A0", paste(expression("atm -1")), list(ecotype_dim), longname="Inverse of minimum pO2 required for resting metabolism at reference temperature", mv)
    var_E0 <- ncvar_def("E0", paste(expression("eV")), list(ecotype_dim), longname="Temperature dependency of A0", mv)
    var_phi_crit <- ncvar_def("phi_crit", paste(expression("nondimensional")), list(ecotype_dim), longname="Increase in phy required for ecologically sustainable populations", mv)
    var_lon_edges <- ncvar_def("lon_edges", paste(expression("degrees")), list(lon1.edges), longname="Longitude", mv)
    var_lat_edges <- ncvar_def("lat_edges", paste(expression("degrees")), list(lat2.edges), longname="Latitude", mv)
    var_topo <- ncvar_def("bathymetry", paste(expression("(m a.s.l.)")), list(lon1, lat2), longname="Bathymetry", mv)
    var_temp <- ncvar_def("temperature", paste(expression("degC")), list(lon1, lat2, depth3), longname="Ocean temperature", mv)
    var_O2 <- ncvar_def("O2", paste(expression("mol kg-1")), list(lon1, lat2, depth3), longname="Ocean dissolved O2", mv)
    var_pO2 <- ncvar_def("pO2", paste(expression("matm")), list(lon1, lat2, depth3), longname="Pressure corrected pO2", mv)

    # checked: [in Ferret] list ECOTYPE_VIABILITY[k=1,l=@sum]-HABITAT_VIABILITY[k=1]/100*1000 > null

    # Create a NetCDF file with the file name and Habitat Viability variable defined above
    ncnew <- nc_create(filename, list(var_via, var_eco_via, var_A0, var_E0, var_phi_crit, var_topo, var_temp, var_O2, var_pO2, var_lon_edges, var_lat_edges))

    # Add your array (made in loop) above to the corresponding variable in your new NetCDF file
    ncvar_put(ncnew, var_via, habitat_viability)
    ncvar_put(ncnew, var_eco_via, ecotype_viability)
    ncvar_put(ncnew, var_A0, A0.xxx)
    ncvar_put(ncnew, var_E0, E0.xxx)
    ncvar_put(ncnew, var_phi_crit, phi_crit.xxx)
    ncvar_put(ncnew, var_lon_edges, lon.edges)
    ncvar_put(ncnew, var_lat_edges, lat.edges)
    ncvar_put(ncnew, var_topo, topo)
    ncvar_put(ncnew, var_temp, temp[,,zdim_min:zdim_max,time])
    ncvar_put(ncnew, var_O2, oxy2[,,zdim_min:zdim_max,time])
    ncvar_put(ncnew, var_pO2, pO2_array[,,zdim_min:zdim_max])

    # Add attributes
    ncatt_put(ncnew, "lon", "edges", "lon_edges")
    ncatt_put(ncnew, "lat", "edges", "lat_edges")

    # Close the new NetCDF file - it is ready to open in your chosen NetCDF reader in the directory defined above!
    nc_close(ncnew)

    # Print dir name
    # (adds a negligible amount of additional runtime, but great for checking progress!)
    print(genie_exp_dir)
}

# Save the ecotype summary files generated in the extractions and manipulations performed above
save(ecotypes.summary, file=paste0(output_dir,outname_radical,MI_version,".Rdata"))
save(ecotypes.summary.short, file=paste0(output_dir,outname_radical,MI_version,"_short.Rdata"))

