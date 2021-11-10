function[] = getHistogram (count)
% function getHistogram plots a histogram showcasing the frequency of
% grades received.


% plot Histogram graph
figure();
histogram('Categories',["Fail (F)", "Pass (P)", "Credit (C)", "Distinction (D)", "High Distinction (HD)"], 'BinCounts', count)
xlabel("Grades (Percentage)")
ylabel("Frequency")
title("Frequency of Student Grades")

end