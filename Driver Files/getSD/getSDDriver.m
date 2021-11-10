% (Dhyan)

% Test case 1 (high grades)
studentData = ["John", "95"; "Suzan", "65"; "Mikey", "94"; "Jonisel", "80"; "Lucy", "92";];
studentAverage = 85.2;
sd = getSD(studentData,studentAverage);

if round(sd,2) == 12.79
    
     fprintf(" \n The SD is %0.2f \n",sd);
     fprintf("Function inputData: success \n")
    
else
    
     fprintf(" \n The SD is %0.2f \n",sd);
     fprintf("Function inputData: fail \n")
    
end



% Test case 2 (low grades)
studentData = ["Winfield", "40"; "Lone", "25"; "James", "0"; "Jake", "50"; "Marinda", "15"; "Kody", "10"];
studentAverage = 23.33;
sd = getSD(studentData,studentAverage);

if round(sd,2) == 18.89
    
     fprintf(" \n The SD is %0.2f \n",sd);
     fprintf("Function inputData: success \n")
    
else
    
     fprintf(" \n The SD is %0.2f \n",sd);
     fprintf("Function inputData: fail \n")
    
end




% Test case 3 (mixed grades)
studentData = ["Carl", "43"; "Beatrice", "73"; "Kieran", "95"; "Jeremy", "58"; "Riley", "82";];
studentAverage = 70.20;
sd = getSD(studentData,studentAverage);

if round(sd,2) == 20.32
    
     fprintf(" \n The SD is %0.2f \n",sd);
     fprintf("Function inputData: success \n")
    
else
    
     fprintf(" \n The SD is %0.2f \n",sd);
     fprintf("Function inputData: fail \n")
    
end