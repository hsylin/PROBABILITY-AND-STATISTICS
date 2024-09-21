n=['1';' ';'2';' ';' ';'3';' ';' ';' ';'4';' ';' ';' ';' ';'5';' ';' ';' ';' ';' ';'6';' ';' ';' ';' ';' ';' ';'7';' ';' ';' ';' ';' ';' ';' ';];
r=eye(35,1);
count=1;
for i=1:7
    for j=0:i
            r(count,1)=j;
            count=count+1;
    end
end

col1=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col1(count,1)=binomial(j,i,0.1);
        else
            col1(count,1)=col1(count-1,1)+binomial(j,i,0.1);
        end
        count=count+1;
    end
end

col2=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col2(count,1)=binomial(j,i,0.2);
        else
            col2(count,1)=col2(count-1,1)+binomial(j,i,0.2);
        end
        count=count+1;
    end
end
col3=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col3(count,1)=binomial(j,i,0.25);
        else
            col3(count,1)=col3(count-1,1)+binomial(j,i,0.25);
        end
        count=count+1;
    end
end
col4=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col4(count,1)=binomial(j,i,0.3);
        else
            col4(count,1)=col4(count-1,1)+binomial(j,i,0.3);
        end
        count=count+1;
    end
end
col5=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col5(count,1)=binomial(j,i,0.4);
        else
            col5(count,1)=col5(count-1,1)+binomial(j,i,0.4);
        end
        count=count+1;
    end
end
col6=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col6(count,1)=binomial(j,i,0.5);
        else
            col6(count,1)=col6(count-1,1)+binomial(j,i,0.5);
        end
        count=count+1;
    end
end

col7=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col7(count,1)=binomial(j,i,0.6);
        else
            col7(count,1)=col7(count-1,1)+binomial(j,i,0.6);
        end
        count=count+1;
    end
end
col8=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col8(count,1)=binomial(j,i,0.7);
        else
            col8(count,1)=col8(count-1,1)+binomial(j,i,0.7);
        end
        count=count+1;
    end
end
col9=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col9(count,1)=binomial(j,i,0.8);
        else
            col9(count,1)=col9(count-1,1)+binomial(j,i,0.8);
        end
        count=count+1;
    end
end
col10=eye(35,1);
count=1;
for i=1:7
    for j=0:i
        if j==0
            col10(count,1)=binomial(j,i,0.9);
        else
            col10(count,1)=col10(count-1,1)+binomial(j,i,0.9);
        end
        count=count+1;
    end
end

fprintf('                                              p                                         \n');
fprintf('        _______________________________________________________________________________\n');
fprintf('n   r   0.10    0.20    0.25    0.30    0.40    0.50    0.60    0.70    0.80    0.90    \n');
fprintf('_______________________________________________________________________________________\n');
for i=1:35
    fprintf('%c\t%d\t%.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  %.4f  \n',n(i,1),r(i,1),col1(i,1),col2(i,1),col3(i,1),col4(i,1),col5(i,1),col6(i,1),col7(i,1),col8(i,1),col9(i,1),col10(i,1));
    if(i==2||i==5||i==9||i==14||i==20||i==27)
        fprintf('\n');
    end
end

    