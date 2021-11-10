function [avg] = getAverage(studentData)
% function getAverage loops over each grade to determine the class average.

avg = 0;

% loop over all grades to determine total sum
for i = 1:size(studentData,1)
    
   avg = avg + str2double(studentData(i,2));
   
end

% determine student grade average (in percentage)
avg=round(avg/size(studentData,1),2);

end