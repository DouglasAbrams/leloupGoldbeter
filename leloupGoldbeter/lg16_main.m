% Douglas Abrams CS 441
%old file to start looking at the model

%% Run with 1 cell and get basic figures from lg16 paper to see if working
ncell = 1;

network = ones(ncell, ncell);

initial_conditions = IC17(ncell);
step_fn = @light_dark;
p = P16();
cellp = cell( 1, length(p) );

for i = 1 : length(p),
    cellp{i} = p(i);
end;

ode_func = @(t, y)(Goldbeter16_rev2_network(t,y,cellp,ncell,network, step_fn)); 
[t,y] = ode15s( ode_func, 0:0.1:360, initial_conditions );

figure;

plot( t, y(:, :));
legend('Mp', 'Mc', 'Mb'); 

%% run with multiple cells

ncell = 3;

network = ones(ncell, ncell) ;

initial_conditions = IC17(ncell);
step_fn = @light_dark;
p = P16();
cellp = cell( 1, length(p) );

for i = 1 : length(p),
    cellp{i} = p(i);
end;

ode_func = @(t, y)(lg16_model(t,y,cellp,ncell,network, step_fn)); 
[t,y] = ode15s( ode_func, 0:0.1:360, initial_conditions );

figure;
size(y)

%make a plot of per in each cell
vals = zeros (3601, 3);
vals(:,1) = y(:, 1);
vals(:, 2) = y(:,7);
vals(:, 3) = y(:, 13);
subplot(3, 1, 1)
plot(t, vals);
legend('Mp', 'Mc', 'Mb'); 
ylabel ('Concentration (nM)', 'FontSize', 16);

vals = zeros (3601, 3);
vals(:,1) = y(:, 2);
vals(:, 2) = y(:,8);
vals(:, 3) = y(:, 14);
subplot(3, 1, 2);
plot (t, vals);
legend('Mp', 'Mc', 'Mb');
ylabel ('Concentration (nM)', 'FontSize', 16);

vals = zeros (3601, 3);
vals(:,1) = y(:, 3);
vals(:, 2) = y(:,9);
vals(:, 3) = y(:, 15);
subplot(3, 1, 3);
plot (t, vals);
legend('Mp', 'Mc', 'Mb'); 
xlabel ('time (hours)', 'FontSize', 16);
ylabel ('Concentration (nM)', 'FontSize', 16);
