% MATLAB code for 1D steady heat conduction

clc
close all;
clear all;

% Geometry information

L=25/100;   % Length of the rod in meters (25cm)
N= 50;      % No of nodes
dx=L/(N-1); % The grid size

% Initial and boundary conditions

T= zeros(N,1);  % Initial guess values
Tb=250;         % Boundary condition, base temperature
Ttip=10;        % Bpundary condition, tip temperature

% Solution

k=50;   % No of iterations

for j=1:0.01:k     % Loop for iteration
    T(1,1)=Tb;  % Temperature of the first node
    for i=2:1:N-1
        T(i,1)=(T(i+1,1)+T(i-1,1))/2;   % Temperature inside the domain based on TS
    end
    T(N,1)=Ttip;    % Temperature of last node
    plot(T);
    hold on;
end
