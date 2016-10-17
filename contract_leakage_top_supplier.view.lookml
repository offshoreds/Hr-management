- view: contract_leakage_top_supplier
  sql_table_name: LOOKER.CONTRACT_LEAKAGE_TOP_SUPPLIER
  fields:

  - dimension: contract_amount_s
    type: string
    sql: ${TABLE}.CONTRACT_AMOUNT

  - dimension: contract_percent_s
    type: string
    sql: ${TABLE}.CONTRACT_PERCENT

  - dimension: suupliers_s
    label: 'Suppliers'
    type: string
    sql: ${TABLE}.SUUPLIERS
    
    
  # measures
  
  - measure: contract_amount_ms
    type: sum
    label: 'Contract Amount'
    value_format: '$#,##0'
    sql: ${contract_amount_s}/900

  - measure: contract_percent_ms
    type: sum
    label: 'Contract Percent'
    value_format: '0.00%'
    sql: ${contract_percent_s}
  

  - measure: count
    type: count
    drill_fields: []

