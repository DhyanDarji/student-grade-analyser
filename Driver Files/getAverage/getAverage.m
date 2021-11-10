function [avg] = getAverage(studentData)
% function getAverage loops over each grade to determine the class average.
avg = 0;
for i = 1:size(studentData,1)
   avg = avg + str2double(studentData(i,2));
end
avg=avg/size(studentData,1);
end