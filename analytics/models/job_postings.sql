select
	job_id,
	job_title,
	company_name,
	job_location,
	job_via,
	job_posted_at,
	job_salary,
	job_schedule_type,
	job_work_from_home,
	job_extensions_raw,
	job_detected_extensions_raw,
	search_time,
	search_date,
	search_term,
	search_location,
	"error",
	error_message
FROM {{source('raw', 'job_postings')}}
where error is null