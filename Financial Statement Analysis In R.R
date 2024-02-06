#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#Calculate Profit As The Differences Between Revenue And Expenses
profit <-  revenue - expenses
profit

#Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * profit, digits = 2)
tax 

# Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- profit - tax
profit.after.tax


# Calculate The Profit Margin As Profit After Tax Over Revenue
# Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- round((profit.after.tax / revenue) * 100, 2)
profit.margin

# Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(profit.after.tax)
mean_pat

# Find The Months With Above-Mean Profit After Tax
good.months <- profit.after.tax > mean_pat
good.months

# Bad Months Are The Opposite Of Good Months!
bad.months <- !good.months
bad.months

# The Best Month Is Where Profit After Tax Was Equal To The Maximum
best.month <- which.max(profit.after.tax)
best.month

# The Worst Month Is Where Profit After Tax Was Equal To The Minimum
worst.month <- which.min(profit.after.tax)
worst.month

# Convert All Calculations To Units Of One Thousand Dollars
revenue.1000 <- round(revenue / 1000, 0)
revenue.1000

expenses.1000 <- round(expenses / 1000, 0)
expenses.1000

profit.1000 <- round(profit / 1000, 0)
profit.1000

profit.after.tax.1000 <- round(profit.after.tax / 1000, 0)
profit.after.tax.1000


# Print Results
cat("Revenue (in $1k):", revenue.1000, "\n")
cat("Expenses (in $1k):", expenses.1000, "\n")
cat("Profit (in $1k):", profit.1000, "\n")
cat("Profit After Tax (in $1k):", profit.after.tax.1000, "\n")
cat("Profit Margin (%):", profit.margin, "\n")
cat("Good Months:", ifelse(good.months, "Yes", "No"), "\n")
cat("Bad Months:", ifelse(bad.months, "Yes", "No"), "\n")
cat("Best Month (in $1k):", profit.after.tax[best.month], "\n")
cat("Worst Month (in $1k):", profit.after.tax[worst.month], "\n")



#Using rbind 

M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

# Print The Matrix
M








