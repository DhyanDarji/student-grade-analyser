% (Dhyan)

% Test case 1 (high grades)
studentData = ["John", "95"; "Suzan", "65"; "Mikey", "94"; "Jonisel", "80"; "Lucy", "92";];
[grade, count] = getGrade(studentData);

  
if grade == ["HD";"C";"HD";"D";"HD"] & count == [0,0,1,1,3]
    
    fprintf("\n The grades are \n ");
    disp(grade);
    fprintf(" \n The counts are \n ");
    disp(count);
    fprintf("Function inputData: success \n \n");
    
else
    
    fprintf("\n The grades are \n ");
    disp(grade);
    fprintf(" \n The counts are \n ");
    disp(count);
    fprintf("\n Function inputData: fail \n \n");

end 


% Test case 2 (low grades)
studentData = ["Winfield", "40"; "Lone", "25"; "James", "0"; "Jake", "50"; "Marinda", "15"; "Kody", "10"];
[grade, count] = getGrade(studentData);

if grade == ["F";"F";"P";"F";"F"] & count == [4,1,0,0,0]
    
    fprintf("\n The grades are \n ");
    disp(grade);
    fprintf(" \n The counts are \n ");
    disp(count);
    fprintf("Function inputData: success \n \n");
    
else
    
    fprintf("\n The grades are \n ");
    disp(grade);
    fprintf(" \n The counts are \n ");
    disp(count);
    fprintf("\n Function inputData: fail \n \n");

end 


% Test case 3 (mixed grades)
studentData = ["Carl", "43"; "Beatrice", "73"; "Kieran", "95"; "Jeremy", "58"; "Riley", "82";];
[grade, count] = getGrade(studentData);

if grade == ["F";"C";"HD";"P";"D"] & count == [1,1,1,1,1]
    
    fprintf("\n The grades are \n ");
    disp(grade);
    fprintf(" \n The counts are \n ");
    disp(count);
    fprintf("Function inputData: success \n \n");
    
else
    fprintf("\n The grades are \n ");
    disp(grade);
    fprintf(" \n The counts are \n ");
    disp(count);
    fprintf("\n Function inputData: fail \n \n");

end 
