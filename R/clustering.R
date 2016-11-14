# clustering 
library(dplyr)
library(cluster)
# select the names that are a specification, the SPECCL are a other category
names(survey_cleaned)[grep("SPECCL", names(survey_cleaned))] # 
# GSCHOLSEARCH = 13 # grep("GSCHOLSEARCH", names(survey_cleaned))
# IMPACTOTHCL = 164
# - 21  30  39  48  57  66  75  84  93 102 111 120 129 138 147 156

colnumbers <-c(13:164)[grep("SPECCL", names(survey_cleaned)[13:164], invert = TRUE)]
# set every variable into 1 or zero 
# so that indicator variable for service.
test <-survey_cleaned %>%
    select(colnumbers)%>%  # only colnumbers
    apply(2, function(x)ifelse(is.na(x), 0,1))

test2 <- daisy(test[,1:16], metric = "eucli")
# apply(test, 2, max) # test if indeed only 1's
# 
# clusters zoeken 
# dan clusters voorspellen
# distance matrix maken
# ?pam, ?clara, ?hclust

d <- dist(survey_cleaned, method = "euclidean")
