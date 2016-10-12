- view: contract_s_businessunits
  sql_table_name: LOOKER.CONTRACT_S_BUSINESSUNITS
  fields:

  - dimension: business_unit
    type: string
    sql: ${TABLE}.BUSINESS_UNIT

  - dimension: contract_amount_cb
    type: string
    sql: ${TABLE}.CONTRACT_AMOUNT

  - dimension: contract_percent_cb
    type: string
    sql: ${TABLE}.CONTRACT_PERCENT

  - dimension: spend_amount_cb
    type: string
    sql: ${TABLE}.SPEND_AMOUNT
    
    
  # measures
  
  
  - measure: contract_amount_bm
    type: sum
    label: 'Contract Amount'
    value_format: '$#,##0.00'
    sql: ${contract_amount_cb}

  - measure: contract_percent_bm
    type: sum
    label: 'Contract Percent'
    value_format: '0.00%'
    sql: ${contract_percent_cb}/100

  - measure: spend_amount_bm
    type: sum
    label: 'Spend Amount'
    value_format: '$#,##0.00'
    sql: ${spend_amount_cb}
    
    
  - measure: Payables_Leakage_rate
    type: sum
    label: 'Payables Leakage Rate'
    value_format: '0.00%'
    sql: ${contract_percent_cb}/1000
    
  - measure: Offconcrat_Spend_Percent
    type: sum
    label: 'Off Concrat Spend Percent'
    value_format: '0.00%'
    sql: ${contract_percent_cb}/1000*1.2
    
    
  - measure: Contract_Leakage_Percentage
    type: sum
    label: 'Contract Leakage Percentage'
    value_format: '0.00%'
    sql: ${contract_percent_cb}/1000*1.3
    
  - measure: Total_Business_Units
    type: sum
    label: 'Total Business Units'
    value_format: '0'
    sql: ${spend_amount_cb}/10000
    
    
  

  - measure: count
    type: count
    drill_fields: []

