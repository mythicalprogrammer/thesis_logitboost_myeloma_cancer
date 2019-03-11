pred_logitboost <- c()
pred[109] <- 2
for (i in 1:length(pred)) {
  if (pred[i] == 1) {
    pred_logitboost[i] <- "WO"
  } else {
    pred_logitboost[i] <- "W"
  }
}
levels(pred_logitboost) <- c("WO", "W")
pred_logitboost <- as.factor(pred_logitboost)
levels(pred_logitboost) == levels(ylearn)
cm <- confusionMatrix(pred_logitboost, ylearn)
cm$overall["Accuracy"]

"
Accuracy
0.1965318
"
