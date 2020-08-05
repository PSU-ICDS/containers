help([[This is a package of standalone layer functional magnetic resonance imaging (layer-fMRI) 
C++ programs that depends only on a C++ compiler. The purpose of this package is to provide layer-analysis 
software that are not (yet) included in the other major MRI analysis software.

Most used programs (so far) are:

  - LN2_LAYERS: To generate equi-distant or equi-volume layers from gray matter segmentation. (Alternative to LN_GROW_LAYERS in older versions of LAYNII).
  - LN_LAYER_SMOOTH : For layer-specific spatial smoothing.
  - LN_BOCO : for BOLD correction in VASO.
  
If run into any issues regarding the use of this module
then please contact Jason at iask@ics.psu.edu]])

whatis("LAYNII Version: 1.5.6")

local ln2devein_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN2_DEVEIN $@"
local ln2layers_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN2_LAYERS $@"
local ln2layersmooth_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN2_LAYER_SMOOTH $@"
local ln3dcolumns_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_3DCOLUMNS $@"
local lnboco_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_BOCO $@"
local lncolumnar_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_COLUMNAR_DIST $@"
local lncorrel_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_CORREL2FILES $@"
local lndirectsmooth_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_DIRECT_SMOOTH $@"
local lnextremetr_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_EXTREMETR $@"
local lnfloatme_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_FLOAT_ME $@"
local lngfactor_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_GFACTOR $@"
local lngradsmooth_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_GRADSMOOTH $@"
local lngradsmoothiter_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_GRADSMOOTH_ITER $@"
local lngrowlayers_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_GROW_LAYERS $@"
local lnimagiro_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_IMAGIRO $@"
local lnintme_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_INT_ME $@"
local lnintpro_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_INTPRO $@"
local lnlayersmooth_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_LAYER_SMOOTH $@"
local lnleakylayers_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_LEAKY_LAYERS $@"
local lnloituma_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_LOITUMA $@"
local lnmp2ragednoise_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_MP2RAGE_DNOISE $@"
local lnnoisekernel_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_NOISE_KERNEL $@"
local lnnoiseme_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_NOISEME $@"
local lnphysiopars_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_PHYSIO_PARS $@"
local lnragrug_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_RAGRUG $@"
local lnshortme_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_SHORT_ME $@"
local lnskew_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_SKEW $@"
local lntempsmooth_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_TEMPSMOOTH $@"
local lntrial_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_TRIAL $@"
local lnzoom_exec = "`which singularity` -s exec ${HOME}/work/sw/LAYNII/laynii_latest.sif LN_ZOOM $@"

set_shell_function("LN2_DEVEIN", ln2devein_exec)
set_shell_function("LN2_LAYERS", ln2layers_exec)
set_shell_function("LN2_LAYER_SMOOTH", ln2layersmooth_exec)
set_shell_function("LN_3DCOLUMNS", ln3dcolumns_exec)
set_shell_function("LN_BOCO", lnboco_exec)
set_shell_function("LN_COLUMNAR_DIST", lncolumnar_exec)
set_shell_function("LN_CORREL2FILES", lncorrel_exec)
set_shell_function("LN_DIRECT_SMOOTH", lndirectsmooth_exec)
set_shell_function("LN_EXTREMETR", lnextremetr_exec)
set_shell_function("LN_FLOAT_ME", lnfloatme_exec)
set_shell_function("LN_GFACTOR", lngfactor_exec)
set_shell_function("LN_GRADSMOOTH", lngradsmooth_exec)
set_shell_function("LN_GRADSMOOTH_ITER", lngradsmoothiter_exec)
set_shell_function("LN_GROW_LAYERS", lngrowlayers_exec)
set_shell_function("LN_IMAGIRO", lnimagiro_exec)
set_shell_function("LN_INT_ME", lnintme_exec)
set_shell_function("LN_INTPRO", lnintpro_exec)
set_shell_function("LN_LAYER_SMOOTH", lnlayersmooth_exec)
set_shell_function("LN_LEAKY_LAYERS", lnleakylayers_exec)
set_shell_function("LN_LOITUMA", lnloituma_exec)
set_shell_function("LN_MP2RAGE_DNOISE", lnmp2ragednoise_exec)
set_shell_function("LN_NOISE_KERNEL", lnnoisekernel_exec)
set_shell_function("LN_NOISEME", lnnoiseme_exec)
set_shell_function("LN_PHYSIO_PARS", lnphysiopars_exec)
set_shell_function("LN_RAGRUG", lnragrug_exec)
set_shell_function("LN_SHORT_ME", lnshortme_exec)
set_shell_function("LN_SKEW", lnskew_exec)
set_shell_function("LN_TEMPSMOOTH", lntempsmooth_exec)
set_shell_function("LN_TRIAL", lntrial_exec)
set_shell_function("LN_ZOOM", lnzoom_exec)
