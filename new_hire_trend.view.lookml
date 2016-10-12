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
  
  
  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER
  
  - measure : new_hires_ytd_m
    label: 'New Hires'
    type: sum
    sql: ${new_hires_ytd}
    
  
  - measure : new_hires_ytd_m_2015
    label: 'New Hires 2015'
    type: sum
    sql: ${new_hires_ytd}
    filters: 
        year: '2015'
    
  
  - measure: count
    type: count
    drill_fields: []
