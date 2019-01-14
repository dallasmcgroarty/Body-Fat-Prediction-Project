#load cart library for cross validation, read data, drop density.
require(caret) 
mydata <- read.csv('Bodyfatproject.csv.') 
mydata$Density <- NULL

#Using predictors Age, Weight and Height: 
model <- train(bodyfat~Age + Weight + Height, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 

#Using predictors Neck, Chest, Abdomen: 
model <- train(bodyfat~Neck + Chest + Abdomen, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 

#Using predictors Hip, Thigh, Knee: 
model <- train(bodyfat~Hip + Thigh + Knee, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 

#Using predictors Ankle, Biceps, Forearm, Wrist: 
model <- train(bodyfat~Ankle + Biceps + Forearm + Wrist, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 

#Using predictors Weight, Height, Neck, Chest, Abdomen: 
model <- train(bodyfat~Weight + Height + Neck + Chest + Abdomen, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 
 
#Using predictors Age, Weight, Height, Neck, Chest and Abdomen: 
model <- train(bodyfat~Age + Weight + Height + Neck + Chest + Abdomen, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 

#Using predictors Weight, Height, Neck, Abdomen, Hip and Thigh: 
model <- train(bodyfat~Weight + Height + Neck + Abdomen + Hip + Thigh, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE)) 
plot(model$resample$RMSE^2) 

#Using predictors Weight, Height, Neck, Chest, Abdomen, Hip, Thigh: 
model <- train(bodyfat~Weight + Height + Neck + Chest + Abdomen + Hip + Thigh, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE) ) 
plot(model$resample$RMSE^2) 

#Using predictors Weight, Height, Neck, Chest, Abdomen, Hip, Thigh, Biceps, Forearm, Wrist: 
model <- train(bodyfat~Weight + Height + Neck + Chest + Abdomen + Hip + Thigh + Biceps + Forearm + Wrist, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE) ) 
plot(model$resample$RMSE^2) 

#Using predictors Weight, Neck, Chest, Abdomen, Hip, Thigh, Biceps, Forearm, Wrist 
#This was my best model: 
model <- train(bodyfat~Weight + Neck + Chest + Abdomen + Hip + Thigh + Biceps + Forearm + Wrist, mydata, method = "lm", trControl = trainControl(method = "cv", number = 10, verboseIter = TRUE) ) 
plot(model$resample$RMSE^2) 
bestmodel<-lm(bodyfat~Weight + Neck + Chest + Abdomen + Hip + Thigh + Biceps + Forearm + Wrist, data=mydata) 
bestmodel$coefficients