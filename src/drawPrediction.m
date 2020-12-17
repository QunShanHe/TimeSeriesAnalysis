function drawPrediction( x_train,y_train,x_pred,G_yPred,L_yPred,M_yPred )

figure;
hold on;
%������֪�Ĺ۲��
 plot(x_train,y_train,'*','Color','c','MarkerSize',5);

%��ʾGompertzԤ���
for i=1:length(x_pred)
    disp(['GompertzԤ��ֵ��',num2str(x_pred(1,i)),'��',',',num2str(G_yPred(1,i)),'��']);
end
%��ʾLogistic��Ԥ���
for i=1:length(x_pred)
    disp(['LogisticԤ��ֵ��',num2str(x_pred(1,i)),'��',',',num2str(L_yPred(1,i)),'��']);
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
axis([min(x_pred)-1 max(x_pred)+1 min(M_yPred)-1 max(M_yPred)+1]);

hold off;
end

