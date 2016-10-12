- view: purchase_by_bu
  sql_table_name: LOOKER.PURCHASE_BY_BU
  fields:

  - dimension: bu_amount
    type: string
    hidden: true
    sql: ${TABLE}.AMOUNT

  - dimension: business_unit
    type: string
    label: 'Business Unit'
    sql: ${TABLE}.BUSINESS_UNIT
    
    # measures 
    
  - measure: amount_m
    label: 'Non-Negotiated Purchase Amount'
    value_format: '$0.00'
    type: sum
    sql: ${bu_amount}*1000


  - measure: count
    type: count
    drill_fields: []