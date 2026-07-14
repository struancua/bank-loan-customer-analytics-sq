use customers;

select 
	ct.TypeName as 'Customer Type',
    
    Round (
    sum(l.PrincipalAmount) , 
    2) 
    as 'Total Loan Amount',
    
    Round (
    sum(l.PrincipalAmount) * 100 / (select sum(PrincipalAmount) from loans.loans) , 
    2) 
    as 'Percentage of Total'
    
from customers c
join customer_types ct
	using (CustomerTypeID)
join accounts.accounts a
	using (CustomerID)
join loans.loans l
	 using (AccountID)
group by ct.TypeName