
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0102default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
62default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
62default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
	start_mlp2default:default2
	start_mlp2default:defaultZ35-198h px� 
�
�Clock port "%s" does not have an associated HD.CLK_SRC. Without this constraint, timing analysis may not be accurate and upstream checks cannot be done to ensure correct clock placement.
88*route2
clk2default:defaultZ35-197h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
	reset_mlp2default:default2
	reset_mlp2default:defaultZ35-198h px� 
B
-Phase 1 Build RT Design | Checksum: 6d9be818
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6750 ; free virtual = 421912default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.1 Fix Topology Constraints | Checksum: 6d9be818
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6734 ; free virtual = 421752default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: 6d9be818
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6734 ; free virtual = 421762default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 16ac654c7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6726 ; free virtual = 421682default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px� 
D
/Phase 3.1 Global Routing | Checksum: 16ac654c7
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6725 ; free virtual = 421672default:defaulth px� 
B
-Phase 3 Initial Routing | Checksum: d44fb701
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6723 ; free virtual = 421642default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6724 ; free virtual = 421662default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6724 ; free virtual = 421662default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6724 ; free virtual = 421662default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6724 ; free virtual = 421662default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6724 ; free virtual = 421662default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6724 ; free virtual = 421662default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 140a5764a
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6721 ; free virtual = 421632default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
D
/Phase 9 Depositing Routes | Checksum: 7301a6a2
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6721 ; free virtual = 421632default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:06 . Memory (MB): peak = 2856.605 ; gain = 0.000 ; free physical = 6740 ; free virtual = 421822default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
622default:default2
92default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:092default:default2
00:00:072default:default2
2856.6052default:default2
0.0002default:default2
67402default:default2
421822default:defaultZ17-722h px� 
~
4The following parameters have non-default value.
%s
395*common2&
general.maxThreads2default:defaultZ17-600h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.742default:default2
00:00:00.262default:default2
2856.6052default:default2
0.0002default:default2
67292default:default2
421802default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2m
Y/home/student/Desktop/PSDS_FINALNA/mina_opacic_2/mina_opacic_2.runs/impl_1/MLP_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2r
^Executing : report_drc -file MLP_drc_routed.rpt -pb MLP_drc_routed.pb -rpx MLP_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2e
Qreport_drc -file MLP_drc_routed.rpt -pb MLP_drc_routed.pb -rpx MLP_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
�
�Port %s has one or several leaf clock pins in its transitive fanout without any clock buffer on the path and no clock reaching the clock pin(s). Vivado cannot infer the clock source when no clock buffer is found on the path to a leaf clock pin.276*timing2
clk2default:defaultZ38-493h px� 
�
�The property HD.CLK_SRC of clock port %s is not set. In out-of-context mode, this prevents timing estimation for clock delay/skew167*timing2
clkclk2default:default8Z38-242h px� 
P
Running DRC with %s threads
24*drc2
62default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
]/home/student/Desktop/PSDS_FINALNA/mina_opacic_2/mina_opacic_2.runs/impl_1/MLP_drc_routed.rpt]/home/student/Desktop/PSDS_FINALNA/mina_opacic_2/mina_opacic_2.runs/impl_1/MLP_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file MLP_methodology_drc_routed.rpt -pb MLP_methodology_drc_routed.pb -rpx MLP_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
}report_methodology -file MLP_methodology_drc_routed.rpt -pb MLP_methodology_drc_routed.pb -rpx MLP_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
Y
$Running Methodology with %s threads
74*drc2
62default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
i/home/student/Desktop/PSDS_FINALNA/mina_opacic_2/mina_opacic_2.runs/impl_1/MLP_methodology_drc_routed.rpti/home/student/Desktop/PSDS_FINALNA/mina_opacic_2/mina_opacic_2.runs/impl_1/MLP_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
nExecuting : report_power -file MLP_power_routed.rpt -pb MLP_power_summary_routed.pb -rpx MLP_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2u
areport_power -file MLP_power_routed.rpt -pb MLP_power_summary_routed.pb -rpx MLP_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
P
/No user defined clocks was found in the design!216*powerZ33-232h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
742default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2g
SExecuting : report_route_status -file MLP_route_status.rpt -pb MLP_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file MLP_timing_summary_routed.rpt -pb MLP_timing_summary_routed.pb -rpx MLP_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
62default:defaultZ38-191h px� 
�
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px� 
|
%s4*runtcl2`
LExecuting : report_incremental_reuse -file MLP_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
|
%s4*runtcl2`
LExecuting : report_clock_utilization -file MLP_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file MLP_bus_skew_routed.rpt -pb MLP_bus_skew_routed.pb -rpx MLP_bus_skew_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
62default:defaultZ38-191h px� 


End Record