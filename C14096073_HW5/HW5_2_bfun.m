function[B]=HW5_2_bfun(num)
B=rand(1,num);
    for j=1:num
        if B(1,j)<0.04
            B(1,j)=1;
        end
        if B(1,j)>=0.04&&B(1,j)<0.1
            B(1,j)=2;
        end
        if B(1,j)>=0.1&&B(1,j)<0.17
            B(1,j)=3;
        end
        if B(1,j)>=0.17&&B(1,j)<0.25
            B(1,j)=4;
        end
        if B(1,j)>=0.25&&B(1,j)<0.33
            B(1,j)=5;
        end
        if B(1,j)>=0.33&&B(1,j)<0.44
            B(1,j)=6;
        end
        if B(1,j)>=0.44&&B(1,j)<0.51
            B(1,j)=7;
        end
        if B(1,j)>=0.51&&B(1,j)<0.57
            B(1,j)=8;
        end
        if B(1,j)>=0.57&&B(1,j)<0.62
            B(1,j)=9;
        end
        if B(1,j)>=0.62&&B(1,j)<0.65
            B(1,j)=10;
        end
        if B(1,j)>=0.65&&B(1,j)<0.71
            B(1,j)=11;
        end
        if B(1,j)>=0.71&&B(1,j)<0.83
            B(1,j)=12;
        end
        if B(1,j)>=0.83&&B(1,j)<0.93
            B(1,j)=13;
        end
        if B(1,j)>=0.93&&B(1,j)<1.00
            B(1,j)=14;
        end
    end
end

