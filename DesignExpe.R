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
datB<-gen.factorial(2,2,varNames=c("Budget.Size","Budget.Extension"))
datI<-gen.factorial(2,3,varNames=c("Innovation.Blockchain","Innovation.Cloud","Innovation.AI"))
datM<-gen.factorial(2,3,varNames=c("MachineLearning.Knowledge","MachineLearning.Conversationnal","MachineLearning.Mining"))
datD<-gen.factorial(2,3,varNames=c("Data.Variety","Data.Volume","Data.Velocity"))
datH<-gen.factorial(2,4,varNames=c("Happyness.actual","Happyness.complexity","Happyness.time","Happyness.price"))
desB<-optFederov(~(.),datB,nTrials=4,eval=TRUE) # Choose an optimum 14 trail design.
desI<-optFederov(~(.),datI,nTrials=8,eval=TRUE) # Choose an optimum 14 trail design.
desM<-optFederov(~(.),datM,nTrials=8,eval=TRUE) # Choose an optimum 14 trail design.
desD<-optFederov(~(.),datD,nTrials=8,eval=TRUE) # Choose an optimum 14 trail design.
desH<-optFederov(~(.),datH,nTrials=12,eval=TRUE) # Choose an optimum 14 trail design.

# Blocking the design for a quadratic polynomial in three variables into two
# seven trial blocks:
datBIH<-gen.factorial(2,9,varNames=c("Budget.Size","Budget.Extension","Innovation.Blockchain","Innovation.Cloud","Innovation.AI","Happyness.actual","Happyness.complexity","Happyness.time","Happyness.price"))
datMD<-gen.factorial(2,6,varNames=c("MachineLearning.Knowledge","MachineLearning.Conversationnal","MachineLearning.Mining","Data.Variety","Data.Volume","Data.Velocity"))

desBIH<-optFederov(~(.),datBIH,approximate=TRUE,nTrials=30,eval=TRUE) # Choose an optimum 14 trail design.
desMD<-optFederov(~(.),datMD,approximate=TRUE,nTrials=10,eval=TRUE) # Choose an optimum 14 trail design.


