%Douglas Abrams - CS 441
%From Stephanie

% function IC = IC17(ncell)
% Return the initial conditions for ncell cells, with all the initial
% conditions for the value of MP in all cells first, and all the initial
% conditions for the value of CREB last. CREB is set to all zeroes.
function IC = IC17(ncell)

IC = ones(ncell*17,1);

IC(1:ncell) = 2.79566 * ones(ncell,1);
IC(ncell+1:2*ncell) = 1.964254 * ones(ncell,1);
IC(2*ncell+1:3*ncell) = 7.946372 * ones(ncell,1);
IC(3*ncell+1:4*ncell) = 1.650025 * ones(ncell,1);
IC(4*ncell+1:5*ncell) = 2.450333 * ones(ncell,1);
IC(5*ncell+1:6*ncell) = 0.126363 * ones(ncell,1);
IC(6*ncell+1:7*ncell) = 8.986265 * ones(ncell,1);
IC(7*ncell+1:8*ncell) = 1.25558 * ones(ncell,1);
IC(8*ncell+1:9*ncell) = 0.165471 * ones(ncell,1);
IC(9*ncell+1:10*ncell) = 0.197619 * ones(ncell,1);
IC(10*ncell+1:11*ncell) = 0.090808 * ones(ncell,1);
IC(11*ncell+1:12*ncell) = 2.408975 * ones(ncell,1);
IC(12*ncell+1:13*ncell) = 0.479535 * ones(ncell,1);
IC(13*ncell+1:14*ncell) = 1.941518 * ones(ncell,1);
IC(14*ncell+1:15*ncell) = 0.32736 * ones(ncell,1);
IC(15*ncell+1:16*ncell) = 0.049602 * ones(ncell,1);
IC(16*ncell+1:17*ncell) = zeros(ncell,1);
