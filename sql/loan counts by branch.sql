use branches;
select 
	b.BranchName as 'Branch',
    count(l.loanID) as 'Total Loans',
    sum(case when ls.StatusName = 'Active' then 1 else 0 end) as 'Active Loans',
    sum(case when ls.StatusName = 'Paid Off' then 1 else 0 end) as 'Paid Off Loans',
    sum(case when ls.StatusName = 'Overdue' then 1 else 0 end) as 'Overdue Loans'
    
from branches b
join customers.customers c
	using (AddressID)
join accounts.accounts a
	using (CustomerID)
join loans.loans l
	 using (AccountID)
join loans.loan_statuses ls
	using (LoanStatusID)
group by b.BranchName