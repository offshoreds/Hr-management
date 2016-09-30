- view: top_cost_centers
  sql_table_name: LOOKER.TOP_COST_CENTERS
  fields:



  - dimension: cost_center_number
    type: string
    sql: ${TABLE}.COST_CENTER_NUMBER

  - dimension: total_expenses
    type: string
    sql: ${TABLE}.TOTAL_EXPENSES

  - dimension: total_expenses_year_ago
    type: string
    sql: ${TABLE}.TOTAL_EXPENSES_YEAR_AGO
    
    
  # MEASURES
  


  - measure: total_expenses_m
    label: 'Total Expenses'
    type: sum
    value_format: '$0.00'
    sql: ${total_expenses}

  - measure: total_expenses_year_ago_m
    value_format: '$0.00'
    type: sum
    label: 'Total Expenses Year Ago'
    sql: ${total_expenses_year_ago}
  

  - measure: count
    type: count
    drill_fields: []
