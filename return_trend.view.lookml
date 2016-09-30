- view: return_trend
  sql_table_name: LOOKER.RETURN_TREND
  fields:

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: return_amount
    type: string
    sql: ${TABLE}.RETURN_AMOUNT

  - dimension: return_percent
    type: string
    sql: ${TABLE}.RETURN_PERCENT

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
  - measure: return_amount_m
    type: sum
    value_format: '$0.00'
    label: 'Return Amount'
    sql: ${return_amount}
    
  - measure: return_percent_m
    label: 'Return %'
    type: sum
    value_format: '0.00\%'
    sql: ${return_percent}


  - measure: count
    type: count
    drill_fields: []

