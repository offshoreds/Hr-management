- view: spend_business_units
  sql_table_name: LOOKER.SPEND_BUSINESS_UNITS
  fields:

  - dimension: business_unit_s
    label: 'Business Unit'
    type: string
    sql: ${TABLE}.BUSINESS_UNIT

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: spend_amount_bs
    type: string
    sql: ${TABLE}.SPEND_AMOUNT

  - dimension: spend_percent_bs
    type: string
    sql: ${TABLE}.SPEND_PERCENT

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
  # measures
  
  - measure: spend_amount_mb
    type: sum
    label: 'Spend Amount'
    value_format: '$#,##0'
    sql: ${spend_amount_bs}/100

  - measure: spend_percent_mb
    type: sum
    label: 'Spend Percent'
    value_format: '0%'
    sql: ${spend_percent_bs}/70
  
  

  - measure: count
    type: count
    drill_fields: []