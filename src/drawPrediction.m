function drawPrediction( x_train,y_train,x_pred,G_yPred,L_yPred,M_yPred )

figure;
hold on;
%绘制已知的观测点
for i=1:length(x_train)
    %plot(x_train(1,i),y_train(1,i),'.','Color','r','MarkerSize',10);
    %text(x_train(1,i)+0.1,y_train(1,i)+0.1,[num2str(x_train(1,i)+2004),',',num2str(y_train(1,i))],'FontSize',10);
end

%绘制Gompertz及Logistic的预测点
for i=1:length(x_pred)
    %plot(x_pred(1,i),G_yPred(1,i),'.','Color','g','MarkerSize',10);
    %plot(x_pred(1,i),L_yPred(1,i),'.','Color','b','MarkerSize',10);
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
axis([2005 2020 30 119]);

hold off;
end

