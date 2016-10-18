- view: spend_costcentres
  sql_table_name: LOOKER.SPEND_COSTCENTRES
  fields:

  - dimension: cost_centre_name
    type: string
    sql: ${TABLE}.COST_CENTRE_NAME

  - dimension: spend_amount_cs
    type: string
    sql: ${TABLE}.SPEND_AMOUNT
    
  - dimension: s_amount
    type: string
    sql: ${TABLE}.S_AMOUNT
    
    
    
  # measures
  
  
  - measure: spend_amount_csm
    type: sum
    label: 'Spend Amount'
    value_format: '$#,##0'
    sql: ${s_amount}
  

  - measure: count
    type: count
    drill_fields: [cost_centre_name]

