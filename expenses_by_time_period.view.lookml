- view: expenses_by_time_period
  sql_table_name: LOOKER.EXPENSES_BY_TIME_PERIOD
  fields:

  - dimension: amount_spent
    type: string
    sql: ${TABLE}.AMOUNT_SPENT

  - dimension: category
    type: string
    sql: ${TABLE}.CATEGORY

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR

 #measures
 
  - measure: amount_spent_m
    type: sum
    label: 'Amount Spent'
    value_format:  '$#,##0.00'
    sql: ${amount_spent}
    
  - measure: amount_spent_m_2015
    type: sum
    label: 'Amount Spent 2015'
    value_format:  '$#,##0.00'
    sql: ${amount_spent}
    filters:
        year: '2015'


  - measure: count
    type: count
    drill_fields: []

