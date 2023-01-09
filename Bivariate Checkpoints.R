data<-read.csv('HR_comma_sep.csv')
head(data)
tail(data)
x <- data$number_project
y <- data$average_monthly_hours

#calculating the correlation coefficient of the variables
r <- cor(data$number_project, data$average_montly_hours)
print(r)

if (r > 0) {
  print("The variables are positively correlated.")
} else if (r < 0) {
  print("The variables are negatively correlated.")
} else {
  print("The variables are not correlated.")
}
# assigning the model as a variable so as to be reused and calling the model
linear_regression <- lm(data$number_project ~ data$average_montly_hours)
lm(data$number_project ~ data$average_montly_hours)