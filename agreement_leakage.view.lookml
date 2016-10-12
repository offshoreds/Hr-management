- view: agreement_leakage
  sql_table_name: LOOKER.AGREEMENT_LEAKAGE
  fields:

  - dimension: amount
    type: string
    sql: ${TABLE}.AMOUNT

  - dimension: business_id
    type: string
    hidden: true
    sql: ${TABLE}.BUSINESS_ID

  - dimension: business_name
    type: string
    sql: ${TABLE}.BUSINESS_NAME
    
  # measures 
  
  - measure: amount_m
    type: sum
    value_format: '$#,##0.00'
    label: 'Contract Leakage Amount'
    sql: ${amount}
    
  - measure: amount_m_s
    type: sum
    value_format: '$#,##0.00'
    label: 'Amount Spend'
    sql: ${amount}/2.5
  
  

  - measure: count
    type: count
    drill_fields: [business_name]

