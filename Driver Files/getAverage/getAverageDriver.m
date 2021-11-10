% (Dhyan)

% Test case 1 (high grades)
studentData = ["John", "95"; "Suzan", "65"; "Mikey", "94"; "Jonisel", "80"; "Lucy", "92";];
avg = getAverage(studentData);

if round(avg,2) == 85.2
     
     fprintf("Average is %.2f \n",avg);
     fprintf("Function inputData: success \n")
    
else
    
     fprintf("Average is %.2f \n",avg);
     fprintf("Function inputData: fail \n")
    
end



% Test case 2 (low grades)
studentData = ["Winfield", "40"; "Lone", "25"; "James", "0"; "Jake", "50"; "Marinda", "15"; "Kody", "10"];
avg = getAverage(studentData);

if round(avg,2) == 23.33
    
     fprintf("Average is %.2f \n",avg);
     fprintf("Function inputData: success \n")
    
else
     
     fprintf("Average is %.2f \n",avg);
     fprintf("Function inputData: fail \n")
    
end




% Test case 3 (mixed grades)
studentData = ["Carl", "43"; "Beatrice", "73"; "Kieran", "95"; "Jeremy", "58"; "Riley", "82";];

avg = getAverage(studentData);

if round(avg,2) == 70.20
    
     fprintf("Average is %.2f \n",avg);
     fprintf("Function inputData: success \n")
    
else
    
     fprintf("Average is %.2f \n",avg);
     fprintf("Function inputData: fail \n")
    
end