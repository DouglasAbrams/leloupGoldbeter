%Douglas Abrams
%CS 441

%initial conditions
ncell = 10;
network = ones(ncell, ncell)*0.7;
initial_conditions = IC17(ncell);
step_fn = @light_dark;


%generate set of perturbed parameters
initial_params = P16();
[~, cellp] = gen_perturbedParamSets(ncell, initial_params);


ode_func = @(t, y)(Goldbeter16_rev2_network(t,y,cellp,ncell,network, 24, 1,step_fn)); 
[t,y] = ode15s( ode_func, 0:1:1000, initial_conditions );
plot(t, y(:, 1:5))



%% sample plot to look at synchrony
plot (t, y(:, 1:ncell));
xlabel ('time (hours)', 'FontSize', 16);
ylabel('Per mRNA (nM)', 'FontSize', 16);

%% plots

% s = size(h);
% %means = zeros(s(1), 3);
% for i = 1:s(1);
%     means(i, ) = mean(l(i, :));
% end

subplot(3,1,1)
plot(t, means(:, 3), 'LineWidth', 1, 'Color', [1 0 0])
hold on;
plot(t, h, 'LineWidth', 0.2, 'Color', [.17 .17 .17]);
hold on;
plot(t, means(:, 3), 'LineWidth', 1, 'Color', [1 0 0])
legend ('Mean', 'Individual Cell')
title ('g = 0.7');

subplot(3,1,2)

plot(t, means(:, 2), 'LineWidth', 1, 'Color', [1 0 0])
hold on;
plot(t, m_, 'LineWidth', 0.2, 'Color', [.17 .17 .17])
hold on;
plot(t, means(:, 2), 'LineWidth', 1, 'Color', [1 0 0])
legend ('Mean', 'Individual Cell')
ylabel ('Per mRNA (nM)', 'FontSize', 16);
title ('g = 0.3');

subplot(3,1,3)

plot(t, means(:, 1), 'LineWidth', 1, 'Color', [1 0 0])
hold on;
plot(t,l, 'LineWidth', 0.2, 'Color', [.17 .17 .17])
hold on;
plot(t, means(:, 1), 'LineWidth', 1, 'Color', [1 0 0])
legend ('Mean', 'Individual Cell')
xlabel ('Time (h)', 'FontSize', 16);
title ('g = 0.01');

%for plot shown on slideshow
%if this code is run it probably wont work because it specifically
%references variables da and ss 
%it is commented out so it wont cause an error

% subplot (2,1,1)
% plot(t, start_norm(:, 1:ncell));
% ylabel('Per mRNA (nM)', 'FontSize', 16);
% title (' Identical Initial Conditions', 'FontSize', 18);
% 
% subplot (2,1,2)
% plot(t, skewed(:, 1:ncell));
% title (' Different Initial Conditions', 'FontSize', 18);
% xlabel ('time (hours)', 'FontSize', 16);
% ylabel('Per mRNA (nM)', 'FontSize', 16);