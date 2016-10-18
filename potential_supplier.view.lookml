- view: potential_supplier
  sql_table_name: LOOKER.POTENTIAL_SUPPLIER
  fields:

  - dimension: avg_invoice_price
    type: string
    sql: ${TABLE}.AVG_INVOICE_PRICE

  - dimension: invoice_quantity
    type: string
    sql: ${TABLE}.INVOICE_QUANTITY

  - dimension: max_invoice_price
    type: string
    sql: ${TABLE}.MAX_INVOICE_PRICE

  - dimension: min_invoice_price
    type: string
    sql: ${TABLE}.MIN_INVOICE_PRICE

  - dimension: product_name
    type: string
    sql: ${TABLE}.PRODUCT_NAME

  - dimension: savings_amount
    type: string
    sql: ${TABLE}.SAVINGS_AMOUNT

  - dimension: savings_percentage
    type: string
    sql: ${TABLE}.SAVINGS_PERCENTAGE

  - dimension: spend
    type: string
    sql: ${TABLE}.SPEND

  - dimension: supplier_name
    type: string
    sql: ${TABLE}.SUPPLIER_NAME
    
  - dimension: savings_p
    type: string
    sql: ${TABLE}.SAVINGS_P
    
    
    
  # measures
  
  - measure: avg_invoice_price_m
    type: sum
    label: 'Avg Invoice Price'
    value_format: '$#,##0'
    sql: ${avg_invoice_price}

  - measure: invoice_quantity_m
    type: sum
    label: 'Invoice Quantity'
    value_format: '0'
    sql: ${invoice_quantity}

  - measure: max_invoice_price_m
    type: sum
    label: 'Max Invoice Amount'
    value_format: '$#,##0'
    sql: ${max_invoice_price}

  - measure: min_invoice_price_m
    type: sum
    label: 'Min Invoice Amount'
    value_format: '$#,##0'
    sql: ${min_invoice_price}
    
    
  - measure: savings_percentage_m
    type: sum
    label: 'Savings Percentage'
    value_format: '0%'
    sql: ${savings_p}

  - measure: spend_m
    type: sum
    label: 'Spend Amount'
    value_format: '$#,##0'
    sql: ${spend}

  - measure: count
    type: count
    drill_fields: [product_name, supplier_name]

