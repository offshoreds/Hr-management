- view: purchase_by_supplier
  sql_table_name: LOOKER.PURCHASE_BY_SUPPLIER
  fields:

  - dimension: sup_amount
    type: string
    sql: ${TABLE}.AMOUNT

  - dimension: suplier
    type: string
    sql: ${TABLE}.SUPLIER
    
  # measures 
  
  - measure: sup_amount_m
    label: 'Non Negotiated Purchase Amount'
    value_format: '$0.00'
    type: sum
    sql: ${sup_amount}


  - measure: count
    type: count
    drill_fields: []

