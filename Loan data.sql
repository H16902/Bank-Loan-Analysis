SELECT home_ownership,
count(id) as Total_Loan_Applications,
SUM(Loan_Amount) as Total_Funded_Amount,
sum(total_payment) as Total_Received_Amount
FROM new_schema.financial_loan
group by home_ownership
Order by count(id) DESC; 