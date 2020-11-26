function drawPrediction( x_train,y_train,x_pred,G_yPred,L_yPred,M_yPred )

figure;
hold on;
%������֪�Ĺ۲��
for i=1:length(x_train)
    %plot(x_train(1,i),y_train(1,i),'.','Color','r','MarkerSize',10);
    %text(x_train(1,i)+0.1,y_train(1,i)+0.1,[num2str(x_train(1,i)+2004),',',num2str(y_train(1,i))],'FontSize',10);
end

%����Gompertz��Logistic��Ԥ���
for i=1:length(x_pred)
    %plot(x_pred(1,i),G_yPred(1,i),'.','Color','g','MarkerSize',10);
    %plot(x_pred(1,i),L_yPred(1,i),'.','Color','b','MarkerSize',10);
end


%����GompertzԤ����
plot(x_pred,G_yPred,'-','Color','g','LineWidth',1);  hold on;
%����LogisticԤ����
plot(x_pred,L_yPred,'-.','Color','b','LineWidth',1); hold on;
%����MeanԤ����
plot(x_pred,M_yPred,'--','Color','r','LineWidth',1); hold on;

%������ʾ��Χ�����ֱ�ע
xlabel('���');
ylabel('��/����');
title('2005~2020���ƶ��绰�ռ���');
axis([2005 2020 30 119]);

hold off;
end

