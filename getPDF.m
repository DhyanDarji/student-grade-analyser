function [normPlot] = getPDF (studentAverage,studentSD)
% (Dhyan) function getPDF uses the inputted parameter "studentAverage" and
% "studentSD" to calculate and plot a probability density function
% graph which is returned to the StudentGrader file.

% This assumes that the data we have collected will form a normal distribution.

% assign x and y axis
x_axis = -50:0.01:150;
y_axis = [];

% loop over "x_axis" and sub in all values of the "x_axis" one by one in the
% the PDF equation along with studentAverage and studentSD 
% to determine values for the y axis of a PDF plot
for i = x_axis
    
    equation = 1/(2*pi*(studentSD)^2)^(1/2) * exp((-(i-studentAverage)^2)/(2*(studentSD)^2));
    
    y_axis = [y_axis, equation];
    
end

figure();

% plot PDF usingg x and y axis.
normPlot = plot(x_axis, y_axis);
xlabel("Grades (Percentage)")
ylabel("Probability Density")
title("Probability Density Function for Student Grades")


end