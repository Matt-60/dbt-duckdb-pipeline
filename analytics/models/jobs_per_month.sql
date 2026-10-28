SELECT
    DATE_TRUNC('month', search_date) AS month,
    search_term AS role,
    Count(*) as postings
FROM {{ ref('job_postings') }}
Group by month, role
order by month, role