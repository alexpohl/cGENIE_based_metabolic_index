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

### Published experiments.

Instruction required to replicate published runs are found in directory 'PUBS'.
