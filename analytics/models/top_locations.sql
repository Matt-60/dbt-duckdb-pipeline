SELECT
    job_location,
    Count(*) as postings
FROM {{ ref('job_postings') }}
Group by job_location
order by postings desc
limit 10