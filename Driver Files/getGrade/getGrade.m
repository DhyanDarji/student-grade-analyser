function [grade,count] = getGrade(studentData)
% function getGrade converts percentages into grades and uses incremenet to
% keep track of how many students received a particular grade.
    grade = [];
    fail = 0;
    pass = 0;
    credit = 0;
    dist = 0;
    hd = 0;
    for i = 1:size(studentData,1)
        
        if str2double(studentData(i,2)) >= 1 && str2double(studentData(i,2))<= 49
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
count = [fail, pass, credit, dist, hd];
end 