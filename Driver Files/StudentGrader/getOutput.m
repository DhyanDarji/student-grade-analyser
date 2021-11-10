function [] = getOutput(studentData, studentAverage)
% function getOutput outputs a summary of grade for a certain student.

request = input('Do you wish to see a single student summary or whole class (single/all)? ', 's');

% repeat input until request is a proper value. 
while request ~= "single" && request ~= "all"
    
    request = input('Do you wish to see a single student summary or whole class (single/all)? ', 's');
    
end 

% output single student summary
if request == "single"

    % find student name in the data array.
    student = input('Which students results do you want? ','s');
    index = contains(studentData(:,1),student);
    studentSize = size(index,1)
    
        rowNum = 0;
        
    % loop over studentSize to find row of student name.
    for row = 1:studentSize
   
        if index(row,1) == 1
            
            rowNum=row
            
        end
    end
        
    if rowNum == 0
        
        fprintf("The name is not on the list \n")
        
        return
        
    end
    
    
    % compare grade with average
    avgCompare = str2double(studentData(rowNum,2)) - studentAverage;

    % output summary.
    if avgCompare>0
        
        fprintf("The student %s achieved a %s with an overall percentage of %s. This grade was %0.f above the class average of %0.2f \n",studentData(rowNum,1), studentData(rowNum,3), studentData(rowNum,2),avgCompare,studentAverage);
        
    else
        
        fprintf("The student %s achieved a %s with an overall percentage of %s. This grade was %0.f below the class average of %0.2f \n",studentData(rowNum,1), studentData(rowNum,3), studentData(rowNum,2),abs(avgCompare).studentAverage);

    end

    

elseif request == "all"
    
    fprintf("\n \n")
    
    % loop over data to output summary for all students.
   for i = 1:1:size(studentData,1)
       
       avgCompare = str2double(studentData(i,2)) - studentAverage;
       
       if avgCompare>0
           
        fprintf("The student %s achieved a %s with an overall percentage of %s. This grade was %0.f above the class average of %0.2f \n \n",studentData(i,1), studentData(i,3), studentData(i,2),avgCompare,studentAverage)
        
       else
           
        fprintf("The student %s achieved a %s with an overall percentage of %s. This grade was %0.f below the class average of %0.2f \n \n",studentData(i,1), studentData(i,3), studentData(i,2),abs(avgCompare),studentAverage)

    end
       
   end
   
end 


