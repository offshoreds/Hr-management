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
    value_format: '$#,##0'
    sql: ${exception_amount}/10000
    
  - measure: exception_amount_m_ss
    label: 'Total Amount Spend'
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${exception_amount}/1000
    links:
    - label: Spend Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Invoice_Date,spend_transactions.Invoice_Type,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
    
  - measure: Active_Suppliers
    label: 'Active Suppliers'
    type: sum
    value_format: '#,##0'
    sql: ${exception_amount}/40000.5000
    links:
    - label: Suppliers Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Supplier_Name,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
  - measure: Contracted
    label: 'Contracted'
    type: sum
    value_format: '0%'
    sql: ${exception_amount}/90000000000.5000
    links:
    - label: Contracted Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Supplier_Name,spend_transactions.Contract_Spend_m,spend_transactions.Off_Contract_Spend_m,spend_transactions.Contract_Leakage_m
    
    
  - measure: Invoices
    label: 'Invoices'
    type: sum
    value_format: '#,##0'
    sql: ${exception_amount}/70000.5000
    links:
    - label: Invoices Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Invoice_Date,spend_transactions.Invoice_Type,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
    
  - measure: exception_amount_m_s
    label: 'Category Amount'
    type: sum
    value_format: '$#,##0'
    sql: ${exception_amount}/80000

  - measure: count
    type: count
    drill_fields: []