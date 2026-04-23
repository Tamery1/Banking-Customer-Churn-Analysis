SELECT
    customer_id,
    country,
    gender,
    age,
    balance,
    estimated_salary,
    credit_score,
    churn,
    CASE 
        WHEN balance > 150000 THEN 'Gold'
        WHEN balance BETWEEN 50000 AND 150000 THEN 'Silver'
        ELSE 'Bronze'
    END AS customer_segment,
    CASE 
        WHEN credit_score >= 700 THEN 'Excellent'
        WHEN credit_score BETWEEN 500 AND 699 THEN 'Fair'
        ELSE 'Risky'
    END AS credit_profile,
    CASE 
        WHEN active_member = 1 THEN 'Active'
        ELSE 'Inactive'
    END AS activity_status
FROM [Bank Customer Churn Prediction];