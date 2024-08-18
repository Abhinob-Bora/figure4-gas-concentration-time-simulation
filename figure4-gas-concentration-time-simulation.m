%figure 4 

% Parameters for oxygen and carbon dioxide diffusion (hypothetical) 

O2_concentration = @(t) 100 * exp(-t / 0.15); 

CO2_concentration = @(t) 40 * (1 - exp(-t / 0.2)); 

 

% Time vector 

t = 0:0.001:0.75; % Time in seconds 

 

% Calculate concentrations over time 

O2_curve = O2_concentration(t); 

CO2_curve = CO2_concentration(t); 

 

% Plot 

figure; 

plot(t, O2_curve, 'b-', 'LineWidth', 2); hold on; 

plot(t, CO2_curve, 'r-', 'LineWidth', 2); 

grid on; 

xlabel('Time (sec)'); 

ylabel('Concentration (mmHg)'); 

legend('Oxygen (O2)', 'Carbon Dioxide (CO2)'); 

title('Oxygen and Carbon Dioxide Concentration Curve for Normal Activity'); 