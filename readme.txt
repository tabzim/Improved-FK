This code is a Matlab implementation of Diversity Metric, K-NN and SVM specified in paper entitled "Improving Fisher Kernels to Compete Deep Neural Networks on Visual Classification Task"

==================Diversity Metric===================
For Diversity Metric implementation, see "diversify_rbm.m" file
we concatenate both the training and test examples to calculate diversity metric for USPS dataset.The USPS dataset have 7291 training examples and 2007 test examples as specified in paper, having diversity metric 0.0174.Here we consider few training and test examples i-e 2000. Showing same results as mentioned in the paper

            =======K-nn=============
For K-nearest neighbor classification , see knn.m file for implementation
