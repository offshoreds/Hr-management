- view: date_exception

  sql_table_name: LOOKER.DATE_EXCEPTION
  fields:

  - dimension: exception_amount
    type: string
    sql: ${TABLE}.EXCEPTION_AMOUNT

  - dimension: supplier
    type: string
    sql: ${TABLE}.SUPPLIER
    
  - dimension: Category
    type: string
    sql: ${TABLE}.CATEGORY
    
    # measures
    
    
  - measure: exception_amount_m
    label: 'Exception Amount'
    type: sum
    value_format: '$#,##0.00'
    sql: ${exception_amount}/10000
    
  - measure: exception_amount_m_ss
    label: 'Total Amount Spend'
    type: sum
    value_format: '$0.##,, " bn"'
    sql: ${exception_amount}/1000
    
  - measure: Active_Suppliers
    label: 'Active Suppliers'
    type: sum
    value_format: '#,##0'
    sql: ${exception_amount}/40000.5000
    
    
  - measure: Contracted
    label: 'Contracted'
    type: sum
    value_format: '0.00%'
    sql: ${exception_amount}/90000000000.5000
    
    
  - measure: Invoices
    label: 'Invoices'
    type: sum
    value_format: '#,##0'
    sql: ${exception_amount}/70000.5000
    
    
  - measure: exception_amount_m_s
    label: 'Category Amount'
    type: sum
    value_format: '$#,##0.00'
    sql: ${exception_amount}/20000

  - measure: count
    type: count
    drill_fields: []