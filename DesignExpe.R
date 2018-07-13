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

B
# Blocking the design for a quadratic polynomial in three variables into two
# seven trial blocks:
dat<-gen.factorial(2,15,varNames=c("Budget.Size","Budget.Extension","Innovation.Blockchain","Innovation.Cloud","Innovation.AI","MachineLearning.Knowledge","MachineLearning.Conversationnal","MachineLearning.Mining",
"Data.Variety","Data.Volume","Data.Velocity","Happyness.actual","Happyness.complexity","Happyness.time","Happyness.price"))
desAll<-optFederov(~(.),dat,nTrials=40,approximate=TRUE,eval=TRUE) # Choose an optimum 14 trail design.
  
# Blocking the design for a quadratic polynomial in three variables into two
# seven trial blocks:
datB<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))
datI<-gen.factorial(2,3,varNames=c("Innovation.Blockchain","Innovation.Cloud","Innovation.AI"))
datM<-gen.factorial(2,3,varNames=c("MachineLearning.Knowledge","MachineLearning.Conversationnal","MachineLearning.Mining"))
datD<-gen.factorial(2,3,varNames=c("Data.Variety","Data.Volume","Data.Velocity"))
datH<-gen.factorial(2,4,varNames=c("Happyness.actual","Happyness.complexity","Happyness.time","Happyness.price"))
desB<-optFederov(~(.),datB,nTrials=6,eval=TRUE) # Choose an optimum 14 trail design.
desI<-optFederov(~(.),datI,nTrials=6,eval=TRUE) # Choose an optimum 14 trail design.
desM<-optFederov(~(.),datM,nTrials=6,eval=TRUE) # Choose an optimum 14 trail design.
desD<-optFederov(~(.),datD,nTrials=6,eval=TRUE) # Choose an optimum 14 trail design.
desH<-optFederov(~(.),datH,nTrials=12,eval=TRUE) # Choose an optimum 14 trail design.

# Blocking the design for a quadratic polynomial in three variables into two
# seven trial blocks:
datBIH<-gen.factorial(2,9,varNames=c("Budget.Size","Budget.Extension","Innovation.Blockchain","Innovation.Cloud","Innovation.AI","Happyness.actual","Happyness.complexity","Happyness.time","Happyness.price"))
datMD<-gen.factorial(2,6,varNames=c("MachineLearning.Knowledge","MachineLearning.Conversationnal","MachineLearning.Mining","Data.Variety","Data.Volume","Data.Velocity"))

desBIH<-optFederov(~(.),datBIH,approximate=TRUE,nTrials=30,eval=TRUE) # Choose an optimum 14 trail design.
desMD<-optFederov(~(.),datMD,approximate=TRUE,nTrials=10,eval=TRUE) # Choose an optimum 14 trail design.

datB<-gen.factorial(2,4,varNames=c("Budget.Size","Innovation.Blockchain","Innovation.Cloud","Innovation.AI"))
datM<-gen.factorial(2,4,varNames=c("Budget.Extension","MachineLearning.Conversationnal","MachineLearning.Mining"))
datD<-gen.factorial(2,4,varNames=c("MachineLearning.Knowledge","Data.Variety","Data.Volume","Data.Velocity"))
datH<-gen.factorial(2,4,varNames=c("Happyness.actual","Happyness.complexity","Happyness.time","Happyness.price"))
desB<-optFederov(~(.),datB,nTrials=10,eval=TRUE) # Choose an optimum 14 trail design.
desM<-optFederov(~(.),datM,nTrials=10,eval=TRUE) # Choose an optimum 14 trail design.
desD<-optFederov(~(.),datD,nTrials=10,eval=TRUE) # Choose an optimum 14 trail design.
desH<-optFederov(~(.),datH,nTrials=10,eval=TRUE) # Choose an optimum 14 trail design.

#Subject: Do you have a knowledge on Machine learning IA / Block chain / Cloud ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Do you have a plan to increase your actual Data Volume/Variety/Velocity ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Are you happy with your actual product ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Do you want to extend it  ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Is the time, the cost or the comlexity that break your result  ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Do you need advanced or packaged solution for Conversationnal agent or Data mining  ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Do you have budget ?
datQ1<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Will you invest more in the future ?
#Subject: do you need more time or money to invest more  ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Are you using external consultant to help you to growth your solution  ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))

#Subject: Do you think to deploy a great part of your solution in the cloud in the future ?
datQ2<-gen.factorial(2,3,varNames=c("Budget.Size","Budget.Extension","Budget.Investment"))