function [B]=HW2_a(num,rate)
B=rand(1,num);
    for j=1:num
        if (B(1,j)<rate)
            B(1,j)=1;  
        else
            B(1,j)=0;
        end    
    end
end