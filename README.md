# Body-Fat-Prediction-Project
models are created using data containing body measurements of a number of people in order to predict body fat percentage

A body fat project csv is included containing body measurement data on many people

Project:
Using previously gathered data, find a way to use the data in order to predict someones body fat percentage. Different variables and models are created to find the best MSE, the best model is used to create a function that will predict someones body fat percentage given the variables specified. Cross validations is used with the caret library and the resulting data is stored in a linear model. After finding the model with the best MSE, the coefficients of that model are used to create the body fat function.

Language/Software:
R was used to complete this project and the caret library is needed to carry out the main cross validation function.

codelisting contains the R code used to find the best model

Bodyfatfunction is the R code containing the function used to predict someones body fat percentage given their measurements

