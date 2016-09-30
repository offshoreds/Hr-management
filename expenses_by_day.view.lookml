- view: expenses_by_day
  sql_table_name: LOOKER.EXPENSES_BY_DAY
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.ID

  - dimension: day
    type: string
    sql: ${TABLE}.DAY

  - dimension: expenses
    type: string
    sql: ${TABLE}.EXPENSES_

  - dimension: reports_submitted
    type: string
    sql: ${TABLE}.REPORTS_SUBMITTED

  - dimension: spent_d
    type: string
    sql: ${TABLE}.SPENT_D
    
  # MEASURES
  
  
  - measure: expenses_m
    type: sum
    label: 'Expenses'
    value_format: '$0.00'
    sql: ${expenses}

  - measure: reports_submitted_m
    type: sum
    label: '# Of Reports Submitted'
    sql: ${reports_submitted}
  

  - measure: count
    type: count
    drill_fields: [id]

