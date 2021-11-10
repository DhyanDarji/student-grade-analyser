% (Dhyan)

% StudentGrader inputs student names and grades and deteremines grades,
% count of grades, average and SD to plot a histogram, PDF and CDF. A
% summary of an individual student or the whole class is then also outputted.

% input student data using either excel or hand written.
studentInput = input('Do you wish to type the student names and grades or input via excel? (type/excel) ', "s");

while (studentInput ~= "excel" &&  studentInput ~= "type")
    
    studentInput = input('Do you wish to type the student names and grades or input via excel? (type/excel) ', 's');
    
end 

if studentInput == ("excel")
    
    excelName = input('Input excel name with xlsx ', 's')
    
    studentData = string(readcell(excelName,'range',2)); %Option 1 of inputting data.
    
elseif studentInput == ("type")
    
    studentData = inputData();
    
end



[studentData, count] = getGrade(studentData);

studentAverage = getAverage(studentData);

studentSD = getSD(studentData,studentAverage);

getHistogram(count)

studentPDF = getPDF(studentAverage,studentSD);

studentCDF = getCDF(studentSD,studentAverage);

getOutput(studentData, studentAverage)



