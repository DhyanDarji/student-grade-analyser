function [studentData,count] = getGrade(studentData)
% (Dhyan) function getGrade converts percentages into grades for the
% inputted "studentData" parameter and counts how many students received a particular grade.
% Grades are added to the vector "studentData" and it is returned to the StudentGrader file along with
% "count" of grades.

    % initialise variables and vectors
    grade = [];
    fail = 0;
    pass = 0;
    credit = 0;
    dist = 0;
    hd = 0;
    
    % loop over each student to determine their grade and find out the
    % frequency of grades received.
    for i = 1:size(studentData,1)
        
         if str2double(studentData(i,2)) >= 0 && str2double(studentData(i,2))<= 49
             
            grade = [grade; "F"];
            
            fail = fail+1;
            
        end 
        
        if str2double(studentData(i,2)) >= 50 && str2double(studentData(i,2))<= 64
            
            grade = [grade; "P"];
            
            pass = pass+1;
            
        end 
        
         if str2double(studentData(i,2)) >= 65 && str2double(studentData(i,2))<= 74
             
            grade = [grade; "C"];
            
            credit = credit+1;
            
         end 
        
         if str2double(studentData(i,2)) >= 75 && str2double(studentData(i,2))<= 84
             
            grade = [grade; "D"];
            
            dist = dist+1;
            
         end
         
        if str2double(studentData(i,2)) >= 85 && str2double(studentData(i,2))<= 100
            
            grade = [grade; "HD"];
            
            hd = hd+1;
            
        end  
        
    end 
    
%append grades into studentData and finialise grade count into one vector
studentData = [studentData, grade];
count = [fail, pass, credit, dist, hd];

end 