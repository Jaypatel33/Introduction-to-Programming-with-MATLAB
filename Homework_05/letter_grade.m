function [grade] = letter_grade(score)
    if score >= 91
        grade = 'A';
        return;
    elseif score >= 81 && score <= 90
        grade = 'B';
        return;
    elseif score >= 71 && score <= 80
        grade = 'C';
        return;
    elseif score >= 61 && score <= 70
        grade = 'D';
        return;
    else 
        grade = 'F';
        return;
    end
end