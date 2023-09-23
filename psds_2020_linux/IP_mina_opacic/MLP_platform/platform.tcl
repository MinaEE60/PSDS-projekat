# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/student/Desktop/PSDS_FINALNA/IP_mina_opacic/MLP_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/student/Desktop/PSDS_FINALNA/IP_mina_opacic/MLP_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {MLP_platform}\
-hw {/home/student/Desktop/PSDS_FINALNA/IP_mina_opacic/MLP_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/student/Desktop/PSDS_FINALNA/IP_mina_opacic}

platform write
platform generate -domains 
platform active {MLP_platform}
bsp reload
bsp reload
platform generate
