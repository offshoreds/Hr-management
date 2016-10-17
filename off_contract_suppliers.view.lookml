- view: off_contract_suppliers
  sql_table_name: LOOKER.OFF_CONTRACT_SUPPLIERS
  fields:

  - dimension: quarter
    type: string
    sql: ${TABLE}.QUARTER

  - dimension: spend_amount
    type: string
    sql: ${TABLE}.SPEND_AMOUNT

  - dimension: suppliers
    type: string
    sql: ${TABLE}.SUPPLIERS

  - dimension: year
    type: string
    sql: ${TABLE}.YEAR
    
    
  # measures
  
  - measure: spend_amount_m
    type: sum
    label: 'Spend Amount'
    value_format: '$#,##0'
    sql: ${spend_amount}

  

  - measure: count
    type: count
    drill_fields: []