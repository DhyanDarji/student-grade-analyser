function[] = getHistogram (count)
% (Dhyan) function getHistogram utilises the inputted parameter "count" to 
% plot and then return to the StudentGrader file a histogram highlighting frequency of student grades 


% plot Histogram graph using x axis as a grade label and y as the
% frequency of grades
figure();
histogram('Categories',["Fail (F)", "Pass (P)", "Credit (C)", "Distinction (D)", "High Distinction (HD)"], 'BinCounts', count)
xlabel("Grades (Percentage)")
ylabel("Frequency")
title("Frequency of Student Grades")

end