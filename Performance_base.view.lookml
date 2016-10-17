- view: performance_base
  sql_table_name: LOOKER.PERFORMANCE_BASE
  fields:

  - dimension: avg_annual_base_salary
    type: string
    sql: ${TABLE}.AVG_ANNUAL_BASE_SALARY

  - dimension: full_base_salary
    type: string
    sql: ${TABLE}.FULL_BASE_SALARY

  - dimension: max_annual_base_salary
    type: string
    sql: ${TABLE}.MAX_ANNUAL_BASE_SALARY

  - dimension: media_annual_base_salary
    type: string
    sql: ${TABLE}.MEDIA_ANNUAL_BASE_SALARY

  - dimension: min_annual_base_salary
    type: string
    sql: ${TABLE}.MIN_ANNUAL_BASE_SALARY

  - dimension: performance_brand
    type: string
    sql: ${TABLE}.PERFORMANCE_BRAND

  - dimension: total_annual_base_salary
    type: string
    sql: ${TABLE}.TOTAL_ANNUAL_BASE_SALARY
    
  # measures
  
  - measure: avg_annual_base_salary_m
    type: sum
    value_format: '$#,##0'
    label: 'Avg Annual Base Salary'
    sql: ${avg_annual_base_salary}

  - measure: full_base_salary_m
    type: sum
    value_format: '$#,##0'
    label: 'Full Base Salary'
    sql: ${full_base_salary}

  - measure: max_annual_base_salary_m
    type: sum
    value_format: '$#,##0'
    label: 'Max Annual Base Salary'
    sql: ${max_annual_base_salary}

  - measure: media_annual_base_salary_m
    type: sum
    value_format: '$#,##0'
    label: 'Media Annual Base Salary'
    sql: ${media_annual_base_salary}

  - measure: min_annual_base_salary_m
    type: sum
    value_format: '$#,##0'
    label: 'Min Annual Base Salary'
    sql: ${min_annual_base_salary}


  - measure: total_annual_base_salary_m
    type: sum
    value_format: '$#,##0'
    label: 'Total Annual Base Salary'
    sql: ${total_annual_base_salary}
  


