SELECT device.browser ,
count(*) as countBrowser
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`
 
group by device.browser
order by countBrowser desc 