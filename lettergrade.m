function grade = lettergrade(score)
if score<0 | score>100
    error('Value must be >=0 and <=100')
elseif score >=90
    grade='A';
elseif score >=80
    grade='B';
elseif score >=70
    grade='C';
elseif score >=60
    grade='D';
else 
    grade='F';
end
end

