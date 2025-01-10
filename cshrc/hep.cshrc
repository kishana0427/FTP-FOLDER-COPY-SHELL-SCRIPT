#########>-----------<##### SHELL VARIABLES #####>------------<#########

set filec
#setenv     MGC_OLH_VIEWER              acroread
#set path=($path /home/software/Acrobat7/bin)
setenv MGC_HTML_BROWSER firefox

#####license setup ######

setenv LM_LICENSE_FILE   29000@mentorserver
setenv SALT_LICENSE_FILE 29000@mentorserver

#####icflow_2006.2d settings ####


setenv TANNER_PATH /home/MentorGraphics/tanner/tanner-2018-3-rhel6-64
set path=( $TANNER_PATH/bin $path )

setenv nitro_HOME /home/MentorGraphics/nitro/nitroPack-2020.1.R2/nitro
set path=( $nitro_HOME/bin $path )

setenv OASYS_HOME /home/MentorGraphics/oasys/Oasys-RTL-2020.1.R1
set path=( $OASYS_HOME/bin $path )

#####pyxis settings ####

setenv MGC_HOME /home/MentorGraphics/pyxis/Pyxis_v21.2_p202112013
set path=( $MGC_HOME/bin $path )
unsetenv $LANG
 
#####pyxis library settings########

setenv MGC_HOME_LIBS      $MGC_HOME/mgc_icstd_lib/
setenv MGC_GENLIB         $MGC_HOME_LIBS/generic_lib
setenv MGC_WAREHOUSE	  $MGC_HOME/shared/pkgs/ic.ixf/userware/En_na
setenv MGC_IC_GENERIC_LIB $MGC_HOME_LIBS/generic_lib
setenv MGC_IC_SOURCES_LIB $MGC_HOME_LIBS/sources_lib
setenv MGC_IC_COMMLIB     $MGC_HOME_LIBS/mgc_ic_commlib
setenv MGC_IC_COMMLIB_QS  $MGC_HOME_LIBS/mgc_ic_comm_qs
setenv MGC_IC_DEVICE_LIB  $MGC_HOME_LIBS/device_lib
setenv MGC_MACROLIB       $MGC_HOME_LIBS/mgc_ic_macrolib
setenv MGC_IC_VERILOG_LIB $MGC_HOME_LIBS/mgc_ic_verilog
setenv MGC_IC_COMMLIB_RF  $MGC_HOME_LIBS/mgc_ic_comm_rf	
setenv NCF_GLOBAL         $MGC_HOME_LIBS/global.ncf
#setenv AS_GLOBAL          /home/software/ams_hk_3.51/mentor/as_global.ncf

#####DA_IC MODELSIM SETTINGS#####

setenv MGC_DAIC_MODELSIM_UI ON
setenv QUESTA_HOME /home/MentorGraphics/ams/amsv/modeltech
set path = ( $QUESTA_HOME/bin $QUESTA_HOME/linux_x86_64 $path)

############### FOUNDRY VARIABLES #################

setenv ADK  /home/software/FOUNDARY/adk3_1
set path = ($ADK/bin $path)

##########>------------<####### CALIBRE_2007.1_31 #######>----------<###########

setenv CALIBRE_HOME /home/MentorGraphics/calibre/aoi_cal_2021.2_37.20

#setenv MGC_HOME /home/MentorGraphics/calibre/aoi_cal_2021.2_37.20/bin


set path = ( $CALIBRE_HOME/bin $path )


##########>------------<####### AMS_2006.2b #######>----------<###########

setenv MGC_AMS_HOME /home/MentorGraphics/ams/amsv
set path = ( $MGC_AMS_HOME/bin $path )

setenv AFS_ROOT /home/MentorGraphics/ams/amsv/afs_root
set path = ( $AFS_ROOT/bin $path )


##########>------------<####### TIME_IT_1.2_1.0 #######>----------<###########

setenv MGC_STAT_HOME /home/software/TIME_IT_1.2_1.0
set path = ( $MGC_STAT_HOME/bin $path )

#############>---------<####modelsim#####>---------<#############

setenv MGC_modeltech /home/software/ams/amsv/modeltech/linux
set path = ( $MGC_modeltech/bin $path )

setenv MGC_catapult /home/MentorGraphics/catapult/Mgc_home
set path = ( $MGC_catapult/bin $path )
##########>-------<#######HDL###########>----------------######

setenv MGC_POWER_PRO /home/software/powerpro/powerpro-10.2_3/powerpro
set path = ( $MGC_POWER_PRO/bin $path )


##

setenv MGC_DFT /home/software/dft_19_1
set path = ( $MGC_DFT/bin $path )

setenv FORMALPRO_HOME /home/software/formal
set path = ( $FORMALPRO_HOME/bin $path )

#setenv PDK_DIR /root/Desktop/NCSU_FreePDK45_Tanner_Enablement_Package_T01/FreePDK45


#########################



