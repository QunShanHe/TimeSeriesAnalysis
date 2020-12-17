%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t_train=[2005,2006,2007,2008,2009,2010,2011,2012,2013,2014];
y_train=[35.4,45.1,60,70.8,79.0,91.4,101.8,103.73,104.5,105.18];
t_pred=[2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020];
S=120;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Gompertz Model
[G_A,G_k,G_yPred]=Gompertz(t_train,y_train,S,t_pred);

%Logistic Model
[L_A,L_B,L_yPred]=Logistic(t_train,y_train,S,t_pred);

%Mean Model
M_yPred=(G_yPred+L_yPred)/2;

%Draw result
drawPrediction(t_train,y_train,t_pred,G_yPred,L_yPred,M_yPred )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
