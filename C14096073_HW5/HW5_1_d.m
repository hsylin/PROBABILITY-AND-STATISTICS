r=eye(25,1);
count=1;
for i=0:24
    r(count,1)=i;
    count=count+1;
end


col1=eye(25,1);
count=1;
for i=0:24
        if count==1
            col1(count,1)=poisson(i,5.5);        
        else
            col1(count,1)=col1(count-1,1)+poisson(i,5.5);
        end
        count=count+1;
end

col2=eye(25,1);
count=1;
for i=0:24
        if count==1
            col2(count,1)=poisson(i,6.0);        
        else
            col2(count,1)=col2(count-1,1)+poisson(i,6.0);
        end
        count=count+1;
end

col3=eye(25,1);
count=1;
for i=0:24
        if count==1
            col3(count,1)=poisson(i,6.5);        
        else
            col3(count,1)=col3(count-1,1)+poisson(i,6.5);
        end
        count=count+1;
end
col4=eye(25,1);
count=1;
for i=0:24
        if count==1
            col4(count,1)=poisson(i,7.0);        
        else
            col4(count,1)=col4(count-1,1)+poisson(i,7.0);
        end
        count=count+1;
end
col5=eye(25,1);
count=1;
for i=0:24
        if count==1
            col5(count,1)=poisson(i,7.5);        
        else
            col5(count,1)=col5(count-1,1)+poisson(i,7.5);
        end
        count=count+1;
end
col6=eye(25,1);
count=1;
for i=0:24
        if count==1
            col6(count,1)=poisson(i,8.0);        
        else
            col6(count,1)=col6(count-1,1)+poisson(i,8.0);
        end
        count=count+1;
end
col7=eye(25,1);
count=1;
for i=0:24
        if count==1
            col7(count,1)=poisson(i,8.5);        
        else
            col7(count,1)=col7(count-1,1)+poisson(i,8.5);
        end
        count=count+1;
end
col8=eye(25,1);
count=1;
for i=0:24
        if count==1
            col8(count,1)=poisson(i,9.0);        
        else
            col8(count,1)=col8(count-1,1)+poisson(i,9.0);
        end
        count=count+1;
end
col9=eye(25,1);
count=1;
for i=0:24
        if count==1
            col9(count,1)=poisson(i,9.5);        
        else
            col9(count,1)=col9(count-1,1)+poisson(i,9.5);
        end
        count=count+1;
end
fprintf('                                        μ                                  \n');
fprintf('    _______________________________________________________________________\n');
fprintf('r   5.5      6.0      6.5     7.0     7.5     8.0     8.5     9.0     9.5    \n');
fprintf('___________________________________________________________________________\n');
for i=1:25
    fprintf('%d\t%.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  \n',r(i,1),col1(i,1),col2(i,1),col3(i,1),col4(i,1),col5(i,1),col6(i,1),col7(i,1),col8(i,1),col9(i,1));
    if(i==6||i==11||i==16||i==21)
        fprintf('\n');
    end
end