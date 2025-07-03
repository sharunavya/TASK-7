-- create view
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

SELECT * FROM loan_details_view;
DROP VIEW loan_details_view;
