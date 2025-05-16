CREATE TABLE bank_loan_data (
    id INT PRIMARY KEY,
    address_state VARCHAR(50),
    application_type VARCHAR(50),
    emp_length VARCHAR(50),
    emp_title VARCHAR(100) NULL,
    grade VARCHAR(50),
    home_ownership VARCHAR(50),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    loan_status VARCHAR(50),
    next_payment_date DATE,
    member_id INT,
    purpose VARCHAR(50),
    sub_grade VARCHAR(50),
    term VARCHAR(50),
    verification_status VARCHAR(50),
    annual_income FLOAT,
    dti FLOAT,
    installment FLOAT,
    int_rate FLOAT,
    loan_amount INT,
    total_acc INT,
    total_payment INT
);

SET datestyle = 'DMY';

COPY bank_loan_data 
FROM 'C:\\Temp\\financial_loan.csv'
DELIMITER ',' 
CSV HEADER;

select * from bank_loan_data;

select count(id) as Total_loan_application from bank_loan_data;

select count(id)as MTD_Total_loan_application from bank_loan_data 
WHERE EXTRACT(MONTH FROM issue_Date) = 12 AND EXTRACT(YEAR FROM issue_Date) = 2021;

select count(id)as PMTD_Total_loan_application from bank_loan_data 
WHERE EXTRACT(MONTH FROM issue_Date) = 11 AND EXTRACT(YEAR FROM issue_Date) = 2021;

select sum(loan_amount) as total_funded_amount from bank_loan_Data;

select sum(loan_amount) as MTD_total_funded_amount from bank_loan_Data where
EXTRACT(MONTH FROM issue_Date) = 12 AND EXTRACT(YEAR FROM issue_Date) = 2021;

select sum(loan_amount) as PMTD_total_funded_amount from bank_loan_Data where
EXTRACT(MONTH FROM issue_Date) = 11 AND EXTRACT(YEAR FROM issue_Date) = 2021;

Select sum(total_payment) as total_amount_collected from bank_loan_data;

Select sum(total_payment) as MTD_total_amount_collected from bank_loan_data where
EXTRACT(MONTH FROM issue_Date) = 12 AND EXTRACT(YEAR FROM issue_Date) = 2021; 

Select sum(total_payment) as PMTD_total_amount_collected from bank_loan_data where
EXTRACT(MONTH FROM issue_Date) = 11 AND EXTRACT(YEAR FROM issue_Date) = 2021; 

Select avg(int_rate)*100 as Avg_Interest_Rate from bank_loan_data;

Select avg(int_rate)*100 as MTD_Avg_Interest_Rate from bank_loan_data where
EXTRACT(MONTH FROM issue_Date) = 12 AND EXTRACT(YEAR FROM issue_Date) = 2021; 

Select avg(int_rate)*100 as PMTD_Avg_Interest_Rate from bank_loan_data where
EXTRACT(MONTH FROM issue_Date) = 11 AND EXTRACT(YEAR FROM issue_Date) = 2021; 

Select avg(dti)*100 as Average_dti from bank_loan_data;

Select avg(dti)*100 as MTD_Average_dti from bank_loan_data where
EXTRACT(MONTH FROM issue_Date) = 12 AND EXTRACT(YEAR FROM issue_Date) = 2021; 

Select avg(dti)*100 as PMTD_Average_dti from bank_loan_data where
EXTRACT(MONTH FROM issue_Date) = 11 AND EXTRACT(YEAR FROM issue_Date) = 2021; 

select (count(case when loan_status='Fully Paid' or loan_status='Current' then id end)*100.0)/count(id) as good_loan_percentage 
from bank_loan_data;

Select count(id) as good_loan_application from bank_loan_data where loan_status='Fully Paid' or loan_status='Current';

SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data;

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off';

SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off';


SELECT
        loan_status,
        COUNT(id) AS Total_Loan_application,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        bank_loan_data
    GROUP BY
        loan_status;

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE Extract(Month from issue_date) = 12 
GROUP BY loan_status;

SELECT 
	Extract(Month from issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date);


SELECT 
    EXTRACT(MONTH FROM issue_date) AS month_number,
    TO_CHAR(issue_date, 'Month') AS month_name,
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM bank_loan_data
GROUP BY month_number, month_name
ORDER BY month_number;


SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state;

SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term;

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length;


SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose;


SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership;

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose;

Select * from bank_loan_data;






