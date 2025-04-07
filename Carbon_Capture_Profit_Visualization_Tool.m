% Carbon Capture Profit Visualization Tool
% This tool calculates the profit from carbon capture and visualizes the data.

% Step 1: Prompt the user to enter required details
disp('Carbon Capture Profit Calculation');

% Get input from the user
cost_per_ton = input('Enter the cost of carbon capture per ton ($):' );
revenue_per_ton = input('Enter the revenue from carbon capture per ton ($):');
total_tons_captured = input('Enter the total amount of carbon captured (tons): ');
additional_costs = input('Enter any additional costs for carbon capture ($):');

% Step 2: Calculate the total costs and revenue
total_revenue = revenue_per_ton * total_tons_captured;
total_costs = (cost_per_ton * total_tons_captured) + additional_costs;
profit = total_revenue - total_costs;

% Step 3: Display the results
fprintf('\nResults of Carbon Capture Profit Calculation:\n');
fprintf('Total Revenue: $%.2f\n', total_revenue);
fprintf('Total Costs: $%.2f\n', total_costs);
fprintf('Profit: $%.2f\n', profit);

% Step 4: Visualize the data in a bar chart

% Data for bar chart (Cost, Revenue, and Profit)
categories = {'Cost', 'Revenue', 'Profit'};
values = [total_costs, total_revenue, profit];

% Create a bar chart
figure;
bar(values, 'FaceColor', [0.2, 0.6, 0.2]);
set(gca, 'XTickLabel', categories);
xlabel('Category');
ylabel('Amount ($)');
title('Carbon Capture Profit: Cost, Revenue, and Profit');
grid on;

% Step 5: Visualize the data in a pie chart
% Pie chart to show the proportion of cost and revenue
labels = {'Costs', 'Revenue'};
sizes = [total_costs, total_revenue];

figure;
pie(sizes, labels);
title('Proportion of Costs vs Revenue in Carbon Capture');
