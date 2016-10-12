- view: variance_supplier
  sql_table_name: LOOKER.VARIANCE_SUPPLIER
  fields:

  - dimension: invoice_amount
    type: string
    sql: ${TABLE}.INVOICE_AMOUNT

  - dimension: invoice_percent
    type: string
    sql: ${TABLE}.INVOICE_PERCENT

  - dimension: supplier
    type: string
    sql: ${TABLE}.SUPPLIER
    
    # measures
    
  - measure: invoice_amount_m
    type: sum
    label: 'Invoice Price Variance Amount'
    value_format: '$#,##0.00'
    sql: ${invoice_amount}

  - measure: invoice_percent_m
    type: sum
    value_format: '0.00\%'
    label: 'Invoice Price Variance %'
    sql: ${invoice_percent}

  - measure: count
    type: count
    drill_fields: []

