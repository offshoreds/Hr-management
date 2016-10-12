- view: recent_emp
  sql_table_name: LOOKER.RECENT_EMP
  fields:

  - dimension: Total_amount_spent
    type: string
    sql: ${TABLE}.AMOUNT_SPENT

  - dimension: emp
    type: string
    label: 'Employee Name'
    sql: ${TABLE}.EMP

  - dimension: emp_id
    type: string
    sql: ${TABLE}.EMP_ID

  - dimension: emp_report_number
    type: string
    sql: ${TABLE}.EMP_REPORT_NUMBER

  - dimension: report_status
    type: string
    sql: ${TABLE}.REPORT_STATUS


    
  - dimension: spent_date
    type: string
    label: 'Spent Date '
    
    sql: ${TABLE}.SPENT_DATE

  
  # measures
  
  - measure: Total_amount_spent_m
    type: sum
    label: 'Amount Spent'
    value_format: '$0.00'
    sql: ${Total_amount_spent}
  
  - measure: count
    type: count
    drill_fields: []

