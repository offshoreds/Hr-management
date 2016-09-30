- view: salary_compression
  sql_table_name: LOOKER.SALARY_COMPRESSION
  fields:

  - dimension: avg_annual_basesal
    type: string
    sql: ${TABLE}.AVG_ANNUAL_BASESAL

  - dimension: employee_headcount
    type: string
    sql: ${TABLE}.EMPLOYEE_HEADCOUNT

  - dimension: median_annual_basesal
    type: string
    sql: ${TABLE}.MEDIAN_ANNUAL_BASESAL

  - dimension: pay_grade_name
    type: string
    sql: ${TABLE}.PAY_GRADE_NAME

  - dimension: pay_yearly_amount
    type: string
    sql: ${TABLE}.PAY_YEARLY_AMOUNT

  - dimension: percent_midpoint
    type: string
    sql: ${TABLE}.PERCENT_MIDPOINT
    
    # measures
    
  - measure: avg_annual_basesal_m
    label: 'Avg Annual Base Salary'
    type: sum
    value_format: '$0.00'
    sql: ${avg_annual_basesal}

  - measure: employee_headcount_m
    type: sum
    label: 'Employee Headcount'
    sql: ${employee_headcount}

  - measure: median_annual_basesal_m
    type: sum
    label: 'Median Annual Base Salary'
    value_format: '$0.00'
    sql: ${median_annual_basesal}

  - measure: pay_yearly_amount_m
    type: sum
    label: 'Pay Yearly Amount'
    value_format: '$0.00'
    sql: ${pay_yearly_amount}

  - measure: percent_midpoint_m
    type: sum
    label: 'Percent Midpoint'
    value_format: '$0.00'
    sql: ${percent_midpoint}
    
  

  - measure: count
    type: count
    drill_fields: [pay_grade_name]
    
    

