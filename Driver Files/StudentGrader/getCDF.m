function [cdfPlot] = getCDF(studentSD,studentAverage)
% function getCDF plots a Cumulative Distribution Function for grades (in percentage) 

% initialise x and y axis
x_axis = -20:1:120;
y_axis = [];

% loop over each element in x to find their y value.
for i = x_axis
    
    % convert x to symbolic variable so that the symbolic toolbox can be
    % used to calculate definite integrals.
    syms x 
    
    f(x)= 1/(2*pi*(studentSD)^2)^(1/2) * exp((-(x-studentAverage)^2)/(2*(studentSD)^2));
    
    integratal = int(f(x),x,-inf,i);
    
    y_axis = [y_axis, integratal];
    
end 
figure();

% plot CDF
cdfPlot = plot(x_axis, y_axis);
xlabel("Grades (Percentage)")
ylabel("Cumulative Distribution Function")
title("Cumulative Distribution Function for Student Grades")

end