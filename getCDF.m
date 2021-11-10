function [cdfPlot] = getCDF(studentSD,studentAverage)
% (Dhyan) function getCDF plots a Cumulative Distribution Function for grades (in percentage)
% using the the inputted parameters "studentSD" and "studentAverage". The
% CDF plot is then returned to the StudentGrader file.

% initialise x and y axis
x_axis = -20:1:120;
y_axis = [];

% loop over each element in x to find their y value by integrating the PDF
% function with studentAverage and studentSD from negative infinity to each
% point in the "x_axis".
for i = x_axis
    
    % convert x to symbolic variable so that the symbolic toolbox can be
    % used to calculate definite integrals.
    syms x 
    
    f(x)= 1/(2*pi*(studentSD)^2)^(1/2) * exp((-(x-studentAverage)^2)/(2*(studentSD)^2));
    
    integratal = int(f(x),x,-inf,i);
    
    y_axis = [y_axis, integratal];
    
end 
figure();

% plot CDF using x and y axis.
cdfPlot = plot(x_axis, y_axis);
xlabel("Grades (Percentage)")
ylabel("Cumulative Distribution Density")
title("Cumulative Distribution Function for Student Grades")

end