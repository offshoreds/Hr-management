- view: new_hire_trend
  sql_table_name: LOOKER.NEW_HIRE_TREND
  fields:

  - dimension: month
    type: string
    sql: ${TABLE}.MONTH

  - dimension: new_hires_ytd
    type: string
    sql: ${TABLE}.NEW_HIRES_YTD

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

  # measures 
  
  - measure : new_hires_ytd_m
    label: 'New Hires YTD'
    type: sum
    sql: ${new_hires_ytd}
  
  - measure: count
    type: count
    drill_fields: []
