function [normPlot] = getPDF (studentAverage,studentSD)
% function getPDF calculates value for a probability density function and
% plots it. This assumes that the data we have collected will form within a
% normal distribution.

% assign x and y axis
x_axis = -50:0.01:150;
y_axis = [];

% loop over x axis calculate values for y axis
for i = x_axis
    
    equation = 1/(2*pi*(studentSD)^2)^(1/2) * exp((-(i-studentAverage)^2)/(2*(studentSD)^2));
    
    y_axis = [y_axis, equation];
    
end

figure();

% plot PDF
normPlot = plot(x_axis, y_axis);
xlabel("Grades (Percentage)")
ylabel("Probability Density")
title("Probability Density Function for Student Grades")


end