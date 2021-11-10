function [studentSD] = getSD(studentData,studentAverage)
% (Dhyan) function getSD uses the inputted parameter "studentData" and "studentAverage" 
% to calculate student standard deviation (sample SD). 
% The SD ("studentSD") is then returned to the StudentGrader file.

sumSquare = 0;

% loop for each student to add sum of squares to determine variance.
for i = 1:size(studentData,1)
    
    sumSquare = sumSquare + (str2double(studentData(i,2)) - studentAverage)^2; 
    
end

% round to 2 decimal points and square variance to get SD.
studentSD = round(sqrt(sumSquare/(size(studentData,1)-1)),2);
end