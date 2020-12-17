mydata <- read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv")

mylogit_sam <- glm(admit ~ gre + gpa + as.factor(rank),data = mydata, family= "binomial")

summary(mylogit_sam)

Abstract

The new NBA 2020-2021 season is about to start, and since the Los Angels Lakers had just won the
2019-2020 NBA championship, I would like to know the proportion of fans that believe 
the Lakers will win the championship again next year.The survey questions that I will use will include
binary questions of whether the fan is eligible to vote, numerical questions on how likely they think
the Lakers will win, and categorical questions on what ethnicity they are.
Then, I would like to find out the relationship between championship NBA teams and their regular
season records, conference ranking, and number of all-NBA players.



Introduction 

In this report, I will conduct an original research on how likely the fans expect the Los Angelas
Lakers to win the 2020-2021 championship. Furthermore, base on the binary results of the 
fans'' predictions, I will use logistic regression to to determine the relationship between 
championship NBA teams and their regular season records, conference ranking, and the number
of all-NBA players they have. First I will simulate a dataset using my survey questions to find out
how likely the eligible fans, those who have watched NBA for over 10 years expect the Lakers to repeat 
with the data set of 1500. Then I will use 40 championship NBA teams to find out the secret to winning a championship. 


Data simulation
set.seed(240)
mydata <- tibble(
  Eligible = sample(x = c("yes","no"), size = 1500, replace = TRUE,prob=(c(0.8,0.2)))
                    likely = sample(x=c(1:10), size=10000, replace=TRUE,
                                    prob=c(0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1,0.1)))
  