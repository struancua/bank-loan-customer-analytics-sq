use accounts;

select 
	c.CustomerID,
    c.FirstName,
    c.LastName,
    a.balance,
    act.TypeName as 'Account Type',
    acs.StatusName as Status
    

from accounts a
join customers.customers c
	using (CustomerID)
join account_types act
	using (AccountTypeID)
join account_statuses acs
	using (AccountStatusID)
order by a.Balance desc
limit 10