% Distribution slip invsersion using both GPS and InSAR.
% 
% The basic flow is as follows
% 1. LOAS COSEISMIC DISPLACEMENT
% 2. LOAD FAULT MODEL
% 3. COMPUTE GREEN FUNCIONS
% 4. COMPUTE LAPLACIAN
% 5. SLIP INVERSION
% 6. PLOTTING
% 7. MAKING STATISTICS
% 8. SAVE RESULTS
% 
% By Shuai WANG @WHU
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
%~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
warning off;
clearvars; 
close all;  
disp('+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
disp('++++++++++++++++        Welcome To CosInv          ++++++++++++++++');
disp('+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++');
% ----- synthetic case
addpath('Demos/SynCoseismicDisp');
origin = [84.708 28.147];%
code_dir='/Users/wangshuai/Downloads/code/CosInv_v1.1/Code';
SetPaths(code_dir);

%==========================================================================
%=================                 1                   ====================
%====                  Load Coseismic Displacement                     ====
%==========================================================================
LoadData;

%==========================================================================
%=================                 2                   ====================
%====                       Load Fault Model                           ====
%==========================================================================
LoadFaultModel;

%==========================================================================
%=================                 3                   ====================
%====                        Compute GREENs                            ====
%==========================================================================
MakeGreens;

%==========================================================================
%=================                 4                   ====================
%====                        Compute Laplacian                         ====
%==========================================================================
MakeLaplacian;

%==========================================================================
%=================                 5                   ====================
%====                          Slip Invert                             ====
%==========================================================================
SlipInv;

%==========================================================================
%=================                 6                   ====================
%====                           Plotting                               ====
%==========================================================================
Plot_slip_dis_and_disp;

%==========================================================================
%=================                 7                   ====================
%====                       Making Statistics                          ====
%==========================================================================
MakeStatistics;

%==========================================================================
%=================                 8                   ====================
%====                          Save Results                            ====
%==========================================================================
SaveResults;


