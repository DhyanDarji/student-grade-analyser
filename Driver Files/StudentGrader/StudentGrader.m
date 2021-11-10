% (Dhyan)

% StudentGrader inputs student names and grades and deteremines grades,
% count of grades, average and SD to plot a hist�ogram, PDF and CDF. A
% summary of an individual student or the whole class is then outputted.

studentData = string(readcell('data3.xlsx','range',2)); %Option 1 of inputting data.

%studentData = inputData();

[studentData, count]  = getGrade(studentData);

%studentAverage = getAverage(studentData);

%studentSD = getSD(studentData,studentAverage);

%getHistogram(count)

%studentPDF = getPDF(studentAverage,studentSD);

%studentCDF = getCDF(studentSD,studentAverage);

%getOutput(studentData, studentAverage)



