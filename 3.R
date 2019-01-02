data<-read.csv("3.csv")
#view data
summary(data)
#Obtain and sort rules according to confidence
basket_rules <- apriori(data,parameter = list(sup = 0.01, conf = 0.5,target="rules"))
basket_rules<-sort(basket_rules, by="confidence", decreasing=TRUE)

#View rules
summary(basket_rules)
inspect(basket_rules)

#View rules as a data frame
df_basket <- as(basket_rules,"data.frame")
View(df_basket)

#graph of the rules
plot(basket_rules,method = "graph",max=20)
