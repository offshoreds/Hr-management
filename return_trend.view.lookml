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
    
  - dimension: return_p
    type: string
    sql: ${TABLE}.RETURN_P
    
  - dimension: returns
    type: string
    hidden: true
    sql: ${TABLE}.RETURNS
    
  # measures
    
  - measure: return_amount_m
    type: sum
    value_format: '$#,##0'
    label: 'Return Amount'
    hidden: true
    sql: ${return_amount}
    
  - measure: return_a
    type: sum
    value_format: '$#,##0'
    label: 'Return Amount'
    sql: ${returns}
    
  - measure: return_percent_m
    label: 'Return %'
    type: sum
    value_format: '0\%'
    sql: ${return_p}


  - measure: count
    type: count
    drill_fields: []

