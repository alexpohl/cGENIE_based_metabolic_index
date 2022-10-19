################################################################
### readme.txt #################################################
################################################################

For: 'The early Paleozoic was intrinsically prone to metazoan extinction'

Authors
Alexandre Pohl1*, Richard G. Stockey2,3, Xu Dai1, Ryan Yohler4, G. Le Hir5, D. Hülse6, Arnaud Brayard1, Seth Finnegan4, Andy Ridgwell7.

Affiliations
1Biogéosciences, UMR 6282 CNRS, Université Bourgogne Franche-Comté, 6 boulevard Gabriel, 21000 Dijon, France
2Department of Geological Sciences, Stanford University, Stanford, CA 94305, USA.
3School of Ocean and Earth Science, National Oceanography Centre Southampton, University of Southampton, Southampton, UK
4Department of Integrative Biology, University of California, Berkeley, Berkeley, CA, USA.
5Université de Paris, Institut de Physique du Globe de Paris, CNRS, 1 rue Jussieu, 75005 Paris, France.
6Max-Planck-Institute for Meteorology, Hamburg, Germany.
7Department of Earth and Planetary Sciences, University of California, Riverside, CA, USA.
* Corresponding author. Email: alexandre.pohl@u-bourgogne.fr

################################################################
14/10/2022 -- README.txt file creation (A.P.)
14/10/2022 -- added files
################################################################

Provided are the instructions necessary to run the main experiments used in Fig. 1C-E.

For each series of experiments/panel of Fig. 1C-E, 2 series of simulations are run (cold and warm), each one consisting in 28 experiments/time slices.

All experiments are run from the main directory.

GENIE output required to run the experiments provided for first simulation only ('AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN', found in 'input').
Instructions and files required to generate whole cGENIE output are provided with the associated paper. 

# =========== (A) 'Baseline' experiments of Fig. 1C =========== #

# In these experiments, pCO2 is varied (actually we use an equivalent radiative forcing), ocean [PO4] is Modern, atmospheric pO2 is Modern

[cold]

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.520ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.500ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.480ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.460ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.440ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.420ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.400ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.380ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.360ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.340ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.320ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.300ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.280ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.260ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.240ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.220ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.200ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.180ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.160ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.140ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.120ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.100ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.80_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.60_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.40_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.20_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.0__ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

[warm]

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.520ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.500ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.480ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.460ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.440ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.420ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.400ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.380ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.360ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.340ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.320ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.300ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.280ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.260ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.240ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.220ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.200ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.180ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.160ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.140ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.120ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.100ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.80_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.60_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.40_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.20_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.0__ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

# =========== (B) 'Detrended' experiments of Fig. 1D =========== #

# Same as (A) but pCO2 is varied in order to detrend low-latitude SSTs.

[cold]

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.520ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.500ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.480ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.460ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.440ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.420ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.400ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.380ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.360ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.340ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.320ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.300ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.280ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.260ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.240ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.220ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.200ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.180ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.160ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.140ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.120ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.100ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.80_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.60_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.40_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.20_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.0__ebP2_.bg.PO4.Tdep.pCO2FKr_detreqC.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

[warm]

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.520ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.500ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.480ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.460ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.440ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.420ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.400ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.380ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.360ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.340ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.320ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.300ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.280ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.260ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.240ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.220ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.200ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.180ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.160ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.140ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.120ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.100ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.80_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.60_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.40_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.20_ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.0__ebP2_.bg.PO4.Tdep.pCO2FKr_detreqW.PO4PD.pO2PD_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

# =========== (C) 'pO2' experiments of Fig. 1E =========== #

# Same as (A) using a time-varying pO2

[cold]

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.520ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.500ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.480ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.460ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.440ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.420ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.400ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.380ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.360ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.340ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.320ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.300ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.280ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.260ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.240ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.220ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.200ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.180ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.160ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.140ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.120ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.100ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.80_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.60_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.40_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.20_ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.0__ebP2_.bg.PO4.Tdep.pCO2FKr_x0.5.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

[warm]

Rscript doMI.R --path "input/" --dir "AP.540ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.520ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.500ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.480ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.460ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.440ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.420ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.400ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.380ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.360ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.340ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.320ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.300ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.280ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.260ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.240ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.220ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.200ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.180ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.160ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.140ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.120ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.100ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.80_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.60_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.40_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.20_ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993
Rscript doMI.R --path "input/" --dir "AP.0__ebP2_.bg.PO4.Tdep.pCO2FKr_x2.0.PO4PD.pO2Kr_radfor.SPIN" --year 7999.5 --neco 1000. --vertical_dimension "upperocean" --mask "shelves" --exclude_poles TRUE --output_netcdf TRUE --set_seed 1993

################################################################
################################################################
################################################################

