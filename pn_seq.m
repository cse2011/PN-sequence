clc;
clear;
op = [1 1 1 1 0 0 0 1 0 0 1 1 0 1 0];
disp('The shift outputs are :>>');
disp(op);
op1 = [zeros(1,length(op)-1) op];
op2 = [op zeros(1,length(op)-1)];
for i = 1:2*length(op)
    disp(' ');
    disp(op1);
    disp(op2);
    disp('___________________________________________________________________________________________________________________________________________________________________________________');
    disp(op1.*op2);    
    R(i) = sum(op1.*op2);
    op2 = circshift(op2,[0,1]);
end
display('The R values are :>>');
display(R)
t = 1:length(R);
figure
stem(t,R)
hold on
plot(t,R)
xlabel('t \rightarrow','FontWeight','bold','Color',[0 0 .2]);
ylabel('R \rightarrow','FontWeight','bold','Color',[0 0 .2]);
title('Plot of Autocorrelation','FontWeight','bold','FontSize',12,'Color',[0 .2 0]);