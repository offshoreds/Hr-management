- view: date_exceptin

  
  sql_table_name: LOOKER.DATE_EXCEPTIN
  fields:

  - dimension: exception_amount
    type: string
    sql: ${TABLE}.EXCEPTION_AMOUNT

  - dimension: supplier
    type: string
    sql: ${TABLE}.SUPPLIER
    
    # measures
    
    
  - measure: exception_amount_m
    label: 'Exception Amount'
    type: sum
    value_format: '$0.00'
    sql: ${exception_amount}/10000

  - measure: count
    type: count
    drill_fields: []

