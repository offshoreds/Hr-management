- view: receipt_date
  sql_table_name: LOOKER.RECEIPT_DATE
  fields:

  - dimension: amount
    type: string
    sql: ${TABLE}.AMOUNT

  - dimension: percent_reception
    type: string
    sql: ${TABLE}.PERCENT_RECEPTION

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
    # measures
    
  - measure: amount_m
    type: sum
    label: 'Receipt Date Exception Amount'
    value_format: '$#,##0'
    sql: ${amount}*1000

  - measure: percent_reception_m
    type: sum
    value_format: '#,##0%'
    label: 'Receipt Date Exception Percent'
    sql: ${percent_reception}/100

  - measure: count
    type: count
    drill_fields: []

