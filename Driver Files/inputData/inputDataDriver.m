% (Dhyan)

% Test case 1 (high grades)
% input = (5) (John,105,95) (Suzan, -534,65) (Mikey,94) (Jonisel,80) (Lucy,92)

studentData = inputData();
expectedData = ["John", "95"; "Suzan", "65"; "Mikey", "94"; "Jonisel", "80"; "Lucy", "92";];

if size(studentData) == size(expectedData) & studentData == expectedData
    
    fprintf("Function inputData: success \n");
    
else 
    
    fprintf("Function inputData: fail \n");
    
end


% Test case 2 (low grades)
% input = (6) (Winfield,40) (Lone, 25) (James,0) (Jake,50) (Marina,15) (Kody,10)

studentData = inputData();
expectedData = ["Winfield", "40"; "Lone", "25"; "James", "0"; "Jake", "50"; "Marinda", "15"; "Kody", "10"];

if size(studentData) == size(expectedData) & studentData == expectedData
            
    fprintf("Function inputData: success \n");
            
else 
    
    fprintf("Function inputData: fail \n");
end



% Test case 3 (mixed grades)
% input = (5) (Carl,43) (Beatrice, 73) (Kieran,95) (Jeremy,58) (Riley,82)

studentData = inputData();

expectedData = ["Carl", "43"; "Beatrice", "73"; "Kieran", "95"; "Jeremy", "58"; "Riley", "82";];

if size(studentData) == size(expectedData) & studentData == expectedData
           
    fprintf("Function inputData: success \n");
            
else 
    
    fprintf("Function inputData: fail \n");
    
end



