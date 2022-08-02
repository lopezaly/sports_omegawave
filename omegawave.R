###############################
###       Alyssa Lopez      ###
###############################

#read the data
data = read.csv("C:/Users/lopez/Documents/MSBA/202103-DSO599-Sports Analytics/Homework/hw1/WearableTechFootballPlayer.csv")

#install packages
install.packages("psych")
library(psych)

install.packages("ggplot2")
library(ggplot2)

install.packages("corrplot")
library(corrplot)

install.packages("tidyverse")
library(tidyverse)

#Exploratory analytics
str(data) #data structure
summary(data) #data summary
describe(data) #data descriptors

#rename variables to provide cleaner graph
dimnames(data)
data_abrev <- rename(data, SD.asp.waves = Standard.deviation.of.the.aspirate.waves, 
                     Share.aper.infl= Share.of.the.aperiodic.influences,
                     Act.symp.reg.mech= Activity.of.sympathetic.regulatory.mechanisms,
                     Act.vagus.reg.mech= Activity.of.vagus.regulatory.mechanisms,
                     HR.anaerobic.thres=HR.at.anaerobic.threshold,
                     Metab.rx.index=Metabolic.reaction.index,
                     Aerob.stat.ind=Aerobic.status.index,
                     Anaer.stat.ind=Anaerobic.status.index)
dimnames(data_abrev)

#correlation matrix to determine linear relationships accross variables
M = cor(data_abrev)
corrplot(M, method = 'color') 

#Focus in on specific correlations
cor(data_abrev$RMSSD, data_abrev$Act.symp.reg.mech)

plot(data_abrev$RMSSD, data_abrev$Act.symp.reg.mech)

