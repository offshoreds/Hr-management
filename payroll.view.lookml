- view: payroll
  sql_table_name: LOOKER.PAYROLL
  fields:

  - dimension: overtime_expense
    type: number
    sql: ${TABLE}.OVERTIME_EXPENSE

  - dimension: payroll_expense
    type: number
    sql: ${TABLE}.PAYROLL_EXPENSE

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: support_expense
    type: number
    sql: ${TABLE}.SUPPORT_EXPENSE

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
    # mearures
  
  - measure: overtime
    label: 'Overtime Expenses'
    type: sum
    value_format: '$0.00'
    sql: ${overtime_expense}/1000000

  - measure: payroll
    label: 'Payroll Expenses'
    value_format: '$0.00'
    type: sum
    sql: ${payroll_expense}/1000000
  
  - measure: support
    type: sum
    value_format: '$0.00'
    label: 'Support Expenses'
    sql: ${support_expense}*100

  - measure: count
    type: count
    drill_fields: []