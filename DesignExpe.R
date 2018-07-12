library('AlgDesign')
cand.list <- expand.grid(ChatbotNeed = c("yes", "no"), MachinelearningNeed = c("yes", "no"),
  AdvancedMachineLearningNeed = c("yes", "no")
  ,Amountofdata = c("huge", "less")
  ,Budget = c(">100k", "<100k")
  ,HappyMLsolution = c("yes", "no")
  ,ExtendInvestment = c("yes", "no")
  ,Cloudneed = c("yes", "no")
  )

###same as SPSS orthogonal design 'seed'. Can put any number. Does not matter.
set.seed(69)

###Generate 16 alternatives in an optimal orthogonal design
simu<-optFederov( ~ ., data = cand.list, nTrials = 10)

#Install lavaan
install.packages("lavaan", dependencies=TRUE)
library(lavaan)

#install lavaan.survey
install.packages("lavaan.survey")
library(lavaan.survey)

#Install survey-package
install.packages("survey")
library(survey)
  
