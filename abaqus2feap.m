% Transform a Abaqus .inp-file into a FEAP input file
% For a 3D mesh with cubic elements

close all;
clear;
clc;

% Name of the input file
ifile = '/home/twiegold/Desktop/Abaqus/Job-1.inp';

% Name for the output file
ofile = '/home/twiegold/Desktop/Abaqus/Imacro';

% Mesh dimension (2/3)
% mdim = 2;
mdim = 3;

% Nodes per element (3,4,8)
mnode = 4;
% mnode = 8;

% Element type
etype ='*Element, type=C3D4';
% etype ='*Element, type=C3D8R';
% etype ='*Element, type=CPS4R';

%--------------------------------------------------------------------------
% Read Abaqus file

[coords,elements,nn,ne] = readinput(mdim,mnode,ifile,etype);

%--------------------------------------------------------------------------
% Write output file

writeoutput(mdim,mnode,ofile,coords,elements,nn,ne);

disp('Done!')