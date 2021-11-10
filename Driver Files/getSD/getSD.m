function [studentSD] = getSD(studentData,studentAverage)
% function getSD sums the squared distance from the mean to calculate the
% student grade standard deviation (sample).
sumSquare = 0;
for i = 1:size(studentData,1)
    sumSquare = sumSquare + (str2double(studentData(i,2)) - studentAverage)^2; 
end

studentSD = sqrt(sumSquare/(size(studentData,1)-1));
end