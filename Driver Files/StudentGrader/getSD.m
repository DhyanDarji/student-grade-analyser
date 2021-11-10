function [studentSD] = getSD(studentData,studentAverage)
% function getSD sums the squared distance from the mean to calculate the
% student grade standard deviation (sample).

sumSquare = 0;

% loop to calculate SD
for i = 1:size(studentData,1)
    
    sumSquare = sumSquare + (str2double(studentData(i,2)) - studentAverage)^2; 
    
end

% round to 2 decimal points.
studentSD = round(sqrt(sumSquare/(size(studentData,1)-1)),2);
end