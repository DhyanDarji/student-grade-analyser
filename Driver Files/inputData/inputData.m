function [studentData] = inputData()
% function inputData utilises a nested loop to input student names and
% their grades.

number = input("How many students were there in the class? ");
studentData = [];

for row = 1:number
   data = [];
   for col = 1:2
       if (col==1)
           name = input(['Enter student ' num2str(row) ' name: '],'s');    
       else  
           grade = input(['Enter percentage (grade) for ' name  ': ']);
        while grade <=0 || grade >=101
            grade = input(['Enter percentage (grade) for ' name  ': ']);
        end 
           data = [data, string(name), num2str(grade)];
            studentData = [studentData;data];
       end 
       
   end 
end 

end 

 
    
    
    