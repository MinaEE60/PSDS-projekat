# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\student\Downloads\psds\PSDS_FINALNA\IP_psds_8_9\platforma_8_9\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\student\Downloads\psds\PSDS_FINALNA\IP_psds_8_9\platforma_8_9\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {platforma_8_9}\
-hw {C:\Users\student\Downloads\psds\PSDS_FINALNA\IP_psds_8_9\psds_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/student/Downloads/psds/PSDS_FINALNA/IP_psds_8_9}

platform write
platform generate -domains 
platform active {platforma_8_9}
domain active {zynq_fsbl}
bsp reload
bsp write
platform generate
platform config -updatehw {C:/Users/student/Downloads/psds/PSDS_FINALNA/IP_psds_8_9/psds_wrapper.xsa}
platform generate -domains 
domain active {standalone_domain}
bsp reload
bsp reload
bsp reload
