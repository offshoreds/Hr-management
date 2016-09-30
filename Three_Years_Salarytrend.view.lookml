- view: threeyears_saltrend
  sql_table_name: LOOKER.THREEYEARS_SALTREND
  fields:

  - dimension: average_annual_base_salary
    type: string
    sql: ${TABLE}.AVERAGE_ANNUAL_BASE_SALARY

  - dimension: employee_head_count
    type: string
    sql: ${TABLE}.EMPLOYEE_HEAD_COUNT

  - dimension: total_annual_base_salary
    type: string
    sql: ${TABLE}.TOTAL_ANNUAL_BASE_SALARY

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
    # measures
  - measure: average_annual_base_salary_m
    type: avg   
    value_format: '$0.00'
    label: 'Average Annual Base Salary'
    sql: ${average_annual_base_salary}/100

  - measure: employee_head_count_m
    label: 'Employee Headcount'
    type: sum
    sql: ${employee_head_count}

  - measure: total_annual_base_salary_m
    type: avg
    value_format: '$0.00'
    label: 'Total Annual Base Salary'
    sql: ${total_annual_base_salary}/10000
    
  - measure: count
    type: count
    drill_fields: []

