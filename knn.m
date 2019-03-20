% This file implements k-nearest neighbour on Fisher scores selected via BIFFSS.


mdl=fitcknn(transformed_trainfeatures,train_labels);
label=predict(mdl,transformed_testfeatures);
cp=classperf(label,test_labels);
cp.CorrectRate;
display(cp.CorrectRate)
