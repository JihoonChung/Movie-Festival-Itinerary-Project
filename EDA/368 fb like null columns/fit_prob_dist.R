install.packages("fitdistrplus")
require(fitdistrplus)

# import the data from .csv file <- 

df_num_1 <- read.csv("W:/368 fb like null columns/FBLike_num_noimation_1.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)
df_num_2 <- read.csv("W:/368 fb like null columns/FBLike_num_noimation_2.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)
df_num_rest_of_people <- read.csv("W:/368 fb like null columns/FBLike_num_noimation_rest_of_people.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)

#-------------------------------------------------------------------------------------

#--------------------------------------df_non_num-----------------------------------------
df_non_num <- read.csv("W:/368 fb like null columns/FBLike_non_num.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)
df_non_num<-df_non_num[which(df_non_num[,'actor_facebook_likes']>1000),]


#scaling factor
scaling<- 1000
df_non_num$actor_facebook_likes<-df_non_num$actor_facebook_likes/scaling


#non mean and std
nonmean <- mean(df_non_num$actor_facebook_likes)
nonstd <- sd(df_non_num$actor_facebook_likes)
#-------------------------------------------------------------------------------------


#--------------------------------------lognormal---------------------------------------

#non lognormal
# fit a lognormal distribution to the data
nonfln <- fitdist(df_non_num$actor_facebook_likes, "lnorm")
summary(nonfln)
plot(nonfln)

# Perform GofFit tests
gof_results_nonfln <- gofstat(nonfln, fitnames = c("lnorm"))
gof_results_nonfln
gof_results_nonfln$kstest
ks.test(df_non_num$actor_facebook_likes, plnorm, nonmean, nonstd)

gof_results_nonfln$chisq
gof_results_nonfln$chisqpvalue
gof_results_nonfln$chisqtable

#-------------------------------------------------------------------------------------

#-------------------------------------gamma------------------------------------------

#non gamma
# fit a lognormal distribution to the data
nonfgam <- fitdist(df_non_num$actor_facebook_likes, "gamma")
summary(nonfgam)
plot(nonfgam)

# Perform GofFit tests
gof_results_nonfgam <- gofstat(nonfgam, fitnames = c("gamma"))
gof_results_nonfgam
gof_results_nonfgam$kstest
ks.test(df_non_num$actor_facebook_likes, plnorm, nonmean, nonstd)

gof_results_nonfgam$chisq
gof_results_nonfgam$chisqpvalue
gof_results_nonfgam$chisqtable

#-------------------------------------------------------------------------------------


#-------------------------------------exp--------------------------------------------

#non exp
# fit a lognormal distribution to the data
nonfexp <- fitdist(df_non_num$actor_facebook_likes, "exp")
summary(nonfexp)
plot(nonfexp)

# Perform GofFit tests
gof_results_nonfexp <- gofstat(nonfexp, fitnames = c("exp"))
gof_results_nonfexp
gof_results_nonfexp$kstest
ks.test(df_non_num$actor_facebook_likes, plnorm, nonmean, nonstd)

gof_results_nonfexp$chisq
gof_results_nonfexp$chisqpvalue
gof_results_nonfexp$chisqtable

#-------------------------------------------------------------------------------------





#--------------------------------------df_num_1-----------------------------------------
df_num_1 <- read.csv("W:/368 fb like null columns/FBLike_num_noimation_1.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)
df_num_1<-df_num_1[which(df_num_1[,'actor_facebook_likes']>1000),]

#scaling factor
scaling<- 1000
df_num_1$actor_facebook_likes<-df_num_1$actor_facebook_likes/scaling


#one mean and std
onemean <- mean(df_num_1$actor_facebook_likes)
onestd <- sd(df_num_1$actor_facebook_likes)
#-------------------------------------------------------------------------------------


#--------------------------------------lognormal---------------------------------------

#one lognormal
# fit a lognormal distribution to the data
onefln <- fitdist(df_num_1$actor_facebook_likes, "lnorm")
summary(onefln)
plot(onefln)

# Perform GofFit tests
gof_results_onefln <- gofstat(onefln, fitnames = c("lnorm"))
gof_results_onefln
gof_results_onefln$kstest
ks.test(df_num_1$actor_facebook_likes, plnorm, onemean, onestd)

gof_results_onefln$chisq
gof_results_onefln$chisqpvalue
gof_results_onefln$chisqtable

#-------------------------------------------------------------------------------------

#-------------------------------------gamma--------------------------------------

#one gamma
# fit a lognormal distribution to the data
onefgam <- fitdist(df_num_1$actor_facebook_likes, "gamma")
summary(onefgam)
plot(onefgam)

# Perform GofFit tests
gof_results_onefgam <- gofstat(onefgam, fitnames = c("gamma"))
gof_results_onefgam
gof_results_onefgam$kstest
ks.test(df_num_1$actor_facebook_likes, plnorm, onemean, onestd)

gof_results_onefgam$chisq
gof_results_onefgam$chisqpvalue
gof_results_onefgam$chisqtable

#-------------------------------------------------------------------------------------


#-------------------------------------exp--------------------------------------------

#one exp
# fit a lognormal distribution to the data
onefexp <- fitdist(df_num_1$actor_facebook_likes, "exp")
summary(onefexp)
plot(onefexp)

# Perform GofFit tests
gof_results_onefexp <- gofstat(onefexp, fitnames = c("exp"))
gof_results_onefexp
gof_results_onefexp$kstest
ks.test(df_num_1$actor_facebook_likes, plnorm, onemean, onestd)

gof_results_onefexp$chisq
gof_results_onefexp$chisqpvalue
gof_results_onefexp$chisqtable

#-------------------------------------------------------------------------------------



#--------------------------------------df_num_2-----------------------------------------
df_num_2 <- read.csv("W:/368 fb like null columns/FBLike_num_noimation_2.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)
df_num_2<-df_num_2[which(df_num_2[,'actor_facebook_likes']>1000),]

#scaling factor
scaling<- 1000
df_num_2$actor_facebook_likes<-df_num_2$actor_facebook_likes/scaling


#two mean and std
twomean <- mean(df_num_2$actor_facebook_likes)
twostd <- sd(df_num_2$actor_facebook_likes)
#-------------------------------------------------------------------------------------


#--------------------------------------lognormal---------------------------------------

#two lognormal
# fit a lognormal distribution to the data
twofln <- fitdist(df_num_2$actor_facebook_likes, "lnorm")
summary(twofln)
plot(twofln)

# Perform GofFit tests
gof_results_twofln <- gofstat(twofln, fitnames = c("lnorm"))
gof_results_twofln
gof_results_twofln$kstest
ks.test(df_num_2$actor_facebook_likes, plnorm, twomean, twostd)

gof_results_twofln$chisq
gof_results_twofln$chisqpvalue
gof_results_twofln$chisqtable

#-------------------------------------------------------------------------------------

#-------------------------------------gamma--------------------------------------

#two gamma
# fit a lognormal distribution to the data
twofgam <- fitdist(df_num_2$actor_facebook_likes, "gamma")
summary(twofgam)
plot(twofgam)

# Perform GofFit tests
gof_results_twofgam <- gofstat(twofgam, fitnames = c("gamma"))
gof_results_twofgam
gof_results_twofgam$kstest
ks.test(df_num_2$actor_facebook_likes, plnorm, twomean, twostd)

gof_results_twofgam$chisq
gof_results_twofgam$chisqpvalue
gof_results_twofgam$chisqtable

#-------------------------------------------------------------------------------------


#-------------------------------------exp--------------------------------------------

#two exp
# fit a lognormal distribution to the data
twofexp <- fitdist(df_num_2$actor_facebook_likes, "exp")
summary(twofexp)
plot(twofexp)

# Perform GofFit tests
gof_results_twofexp <- gofstat(twofexp, fitnames = c("exp"))
gof_results_twofexp
gof_results_twofexp$kstest
ks.test(df_num_2$actor_facebook_likes, plnorm, twomean, twostd)

gof_results_twofexp$chisq
gof_results_twofexp$chisqpvalue
gof_results_twofexp$chisqtable

#-------------------------------------------------------------------------------------



#--------------------------------------df_num_rest-----------------------------------------
df_num_rest_of_people <- read.csv("W:/368 fb like null columns/FBLike_num_noimation_rest_of_people.csv", header=TRUE,sep=",", na.strings=c("NA", ""), stringsAsFactors=FALSE, as.is=TRUE)
df_num_rest<-df_num_rest_of_people[which(df_num_rest_of_people[,'actor_facebook_likes']>1000),]

#scaling factor
scaling<- 1000
df_num_rest$actor_facebook_likes<-df_num_rest$actor_facebook_likes/scaling


#rest mean and std
restmean <- mean(df_num_rest$actor_facebook_likes)
reststd <- sd(df_num_rest$actor_facebook_likes)
#-------------------------------------------------------------------------------------


#--------------------------------------lognormal---------------------------------------

#rest lognormal
# fit a lognormal distribution to the data
restfln <- fitdist(df_num_rest$actor_facebook_likes, "lnorm")
summary(restfln)
plot(restfln)

# Perform GofFit tests
gof_results_restfln <- gofstat(restfln, fitnames = c("lnorm"))
gof_results_restfln
gof_results_restfln$kstest
ks.test(df_num_rest$actor_facebook_likes, plnorm, restmean, reststd)

gof_results_restfln$chisq
gof_results_restfln$chisqpvalue
gof_results_restfln$chisqtable

#-------------------------------------------------------------------------------------

#-------------------------------------gamma--------------------------------------

#rest gamma
# fit a lognormal distribution to the data
restfgam <- fitdist(df_num_rest$actor_facebook_likes, "gamma")
summary(restfgam)
plot(restfgam)

# Perform GofFit tests
gof_results_restfgam <- gofstat(restfgam, fitnames = c("gamma"))
gof_results_restfgam
gof_results_restfgam$kstest
ks.test(df_num_rest$actor_facebook_likes, plnorm, restmean, reststd)

gof_results_restfgam$chisq
gof_results_restfgam$chisqpvalue
gof_results_restfgam$chisqtable

#-------------------------------------------------------------------------------------


#-------------------------------------exp--------------------------------------------

#rest exp
# fit a lognormal distribution to the data
restfexp <- fitdist(df_num_rest$actor_facebook_likes, "exp")
summary(restfexp)
plot(restfexp)

# Perform GofFit tests
gof_results_restfexp <- gofstat(restfexp, fitnames = c("exp"))
gof_results_restfexp
gof_results_restfexp$kstest
ks.test(df_num_rest$actor_facebook_likes, plnorm, restmean, reststd)

gof_results_restfexp$chisq
gof_results_restfexp$chisqpvalue
gof_results_restfexp$chisqtable

#-------------------------------------------------------------------------------------



