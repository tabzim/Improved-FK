% This file implements k-nearest neighbour on Fisher scores selected via BIFFSS.

load('/data/usps_dbm_lastlayer.mat');


mdl=fitcknn(train_data,Y);
label=predict(mdl,test_data);
cp=classperf(label,Y1);
cp.CorrectRate;
display(cp.CorrectRate)