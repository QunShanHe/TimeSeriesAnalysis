function drawPrediction( x_train,y_train,x_pred,G_yPred,L_yPred,M_yPred )

figure;
hold on;
%绘制已知的观测点
 plot(x_train,y_train,'*','Color','c','MarkerSize',5);

%显示Gompertz预测点
for i=1:length(x_pred)
    disp(['Gompertz预测值：',num2str(x_pred(1,i)),'年',',',num2str(G_yPred(1,i)),'部']);
end
%显示Logistic的预测点
for i=1:length(x_pred)
    disp(['Logistic预测值：',num2str(x_pred(1,i)),'年',',',num2str(L_yPred(1,i)),'部']);
end

%绘制Gompertz预测线
plot(x_pred,G_yPred,'-','Color','g','LineWidth',1);  hold on;
%绘制Logistic预测线
plot(x_pred,L_yPred,'-.','Color','b','LineWidth',1); hold on;
%绘制Mean预测线
plot(x_pred,M_yPred,'--','Color','r','LineWidth',1); hold on;

%设置显示范围及部分标注
xlabel('年份');
ylabel('部/百人');
title('2005~2020年移动电话普及率');
axis([min(x_pred)-1 max(x_pred)+1 min(M_yPred)-1 max(M_yPred)+1]);

hold off;
end

