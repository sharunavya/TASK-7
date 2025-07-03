Creating and Using a View in MySQL – loan_details_view
Purpose
This SQL script demonstrates how to:

Create a view (loan_details_view) that simplifies access to comprehensive loan information.

Query the view to fetch loan-related data.

Drop the view when no longer needed.

 Step-by-Step Breakdown
1. Create View

CREATE VIEW loan_details_view AS
SELECT 
    l.LoanID,
    c.Name AS CustomerName,
    e.Name AS EmployeeName,
    lt.LoanCategory,
    l.Amount,
    l.StartDate,
    l.EndDate
FROM Loan l
JOIN Customer c ON l.CustomerID = c.CustomerID
JOIN Employee e ON l.EmployeeID = e.EmployeeID
JOIN LoanType lt ON l.LoanTypeID = lt.LoanTypeID;

This view:
Joins the Loan, Customer, Employee, and LoanType tables.
Presents a consolidated, readable format showing who took the loan, handled by which employee, loan type, and loan period.

2. Query the View

SELECT * FROM loan_details_view;

This will return:
LoanID, CustomerName, EmployeeName, LoanCategory, Amount, StartDate, and EndDate.

3. Drop the View

DROP VIEW loan_details_view;

Use this when:
-->You no longer need the view.
-->You want to recreate it with changes.
