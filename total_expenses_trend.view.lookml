- view: total_expenses_trend
  sql_table_name: LOOKER.TOTAL_EXPENSES_TREND
  fields:

  - dimension: cumulative_expense_amount
    type: string
    sql: ${TABLE}.CUMULATIVE_EXPENSE_AMOUNT

  - dimension: month
    type: string
    sql: ${TABLE}.MONTH

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
  - dimension: Quarter
    type: string
    sql: ${TABLE}.QUARTER
    


  # measures
 
  
  - measure: cumulative_expense_amount_m
    type: sum
    label: 'Cumulative Expense Amount'
    value_format: '$0.##,, " M"'
    sql: ${cumulative_expense_amount}
  
  - measure: count
    type: count
    drill_fields: []

