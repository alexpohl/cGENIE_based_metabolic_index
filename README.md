A. Pohl
19 Oct 2022

## Rationale

This repository contains the required R code to run ecophysiological model analyses based on the output of the cGENIE model.

Is is based on [https://github.com/richardstockey/cGENIE-metabolic_index.extinction] but:
1. Permits running metabolic index simulations by providing just a few parameters in the form of a single command line.
2. Generates additional output in the form of netcdf files.

The scientific content is unchanged compared to Stockey et al. [https://doi.org/10.1073/pnas.2101900118].

## Running a simulation

### Standard example

A synthetic cGENIE output directory is provided (in directory 'input') to permit testing the code.
(You will first have to uncompress this cGENIE output directory.)
To that purpose, just go to the main directory (containing file 'doMI.R') and type in: 

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

That command line requests the following:
- use cGENIE output  "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN"
- use cGENIE year 7999.5 
- consider 1000 ecophysiotypes
- consider the upper ocean only (upper 3 cGENIE levels)
- consider shelves only (i.e., all coastal cGENIE grid points)
- consider all latitudes except cGENIE polar grid points
- output netcdf file
- seed used for the random generation of the 1000 ecophysiotypes (ensuring reproductibility of the simulation).

### Example using a mask

The code also leaves the provision to run the simulation by considering only cGENIE grid points defined with a mask. Here is an example:

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "540Ma_PBDB_entries_global_max2000km.nc" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

## Output NetCDF file

The output NetCDF file contains environmental constraints derived from cGENIE (bathymetry, temperature, [O2] and pO2), ecophysiotypes parameters (A0, E0 and Phi_crit), ecophysiotypes presence/absence (ecotype_viability) and a synthetic map of ecophysiotype diversity (habitat_viability).

Here is the result of a ncdump -h command:

netcdf
AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN_upperocean_shelves_nopoles_v0_habitat_viability
{
dimensions:
        lon = 36 ;
        lat = 36 ;
        Depth = 3 ;
        Ecotype = 1000 ;
        lon_edges = 37 ;
        lat_edges = 37 ;
variables:
        double lon(lon) ;
                lon:units = "degrees_east" ;
                lon:long_name = "lon" ;
                lon:edges = "lon_edges" ;
        double lat(lat) ;
                lat:units = "degrees_north" ;
                lat:long_name = "lat" ;
                lat:edges = "lat_edges" ;
        double Depth(Depth) ;
                Depth:units = "meters" ;
                Depth:long_name = "Depth" ;
        float habitat_viability(Depth, lat, lon) ;
                habitat_viability:units = "(%)" ;
                habitat_viability:_FillValue = NaNf ;
                habitat_viability:long_name = "Habitat Viability" ;
        int Ecotype(Ecotype) ;
                Ecotype:units = "ecotype #" ;
                Ecotype:long_name = "Ecotype" ;
        float ecotype_viability(Ecotype, Depth, lat, lon) ;
                ecotype_viability:units = "1 = presence" ;
                ecotype_viability:_FillValue = NaNf ;
                ecotype_viability:long_name = "Ecotype Viability" ;
        float A0(Ecotype) ;
                A0:units = "atm -1" ;
                A0:_FillValue = NaNf ;
                A0:long_name = "Inverse of minimum pO2 required for resting metabolism at reference temperature" ;
        float E0(Ecotype) ;
                E0:units = "eV" ;
                E0:_FillValue = NaNf ;
                E0:long_name = "Temperature dependency of A0" ;
        float phi_crit(Ecotype) ;
                phi_crit:units = "nondimensional" ;
                phi_crit:_FillValue = NaNf ;
                phi_crit:long_name = "Increase in phy required for ecologically sustainable populations" ;
        float bathymetry(lat, lon) ;
                bathymetry:units = "(m a.s.l.)" ;
                bathymetry:_FillValue = NaNf ;
                bathymetry:long_name = "Bathymetry" ;
        float temperature(Depth, lat, lon) ;
                temperature:units = "degC" ;
                temperature:_FillValue = NaNf ;
                temperature:long_name = "Ocean temperature" ;
        float O2(Depth, lat, lon) ;
                O2:units = "mol kg-1" ;
                O2:_FillValue = NaNf ;
                O2:long_name = "Ocean dissolved O2" ;
        float pO2(Depth, lat, lon) ;
                pO2:units = "matm" ;
                pO2:_FillValue = NaNf ;
                pO2:long_name = "Pressure corrected pO2" ;
        float lon_edges(lon_edges) ;
                lon_edges:units = "degrees" ;
                lon_edges:_FillValue = NaNf ;
                lon_edges:long_name = "Longitude" ;
        float lat_edges(lat_edges) ;
                lat_edges:units = "degrees" ;
                lat_edges:_FillValue = NaNf ;
                lat_edges:long_name = "Latitude" ;
}

### Published experiments.

Instruction required to replicate published runs are found in directory 'PUBS'.
