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
    
    
  - dimension: total_Spend
    type: string
    sql: ${TABLE}.TOTAL_SPEND

  - dimension: invoices
    type: string
    sql: ${TABLE}.INVOICES
    
  - dimension: exc_amount
    type: string
    sql: ${TABLE}.EXC_AMOUNT
    
  - dimension: contracted
    type: string
    sql: ${TABLE}.CONTRACTED

  - dimension: Cat_Amount
    type: string
    sql: ${TABLE}.CAT_AMOUNT
    
  - dimension: act_suppliers
    type: string
    sql: ${TABLE}.ACT_SUPPLIERS
    
    # measures
    
    
  - measure: exception_amount_m
    label: 'Exception Amount'
    type: sum
    value_format: '$#,##0'
    sql: ${exc_amount}
    
  - measure: exception_amount_m_ss
    label: 'Total Amount Spend'
    type: sum
    value_format: '$0.##,, " M"'
    sql: ${total_Spend}
    links:
    - label: Spend Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Invoice_Date,spend_transactions.Invoice_Type,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
    
  - measure: Active_Suppliers
    label: 'Active Suppliers'
    type: sum
    value_format: '#,##0'
    sql: ${act_suppliers}
    links:
    - label: Suppliers Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Supplier_Name,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
  - measure: Contracted
    label: 'Contracted'
    type: sum
    value_format: '0%'
    sql: ${contracted}
    links:
    - label: Contracted Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Supplier_Name,spend_transactions.Contract_Spend_m,spend_transactions.Off_Contract_Spend_m,spend_transactions.Contract_Leakage_m
    
    
  - measure: Invoices
    label: 'Invoices'
    type: sum
    value_format: '#,##0'
    sql: ${invoices}
    links:
    - label: Invoices Detail Report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Invoice_Date,spend_transactions.Invoice_Type,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
    
  - measure: exception_amount_m_s
    label: 'Category Amount'
    type: sum
    value_format: '$#,##0'
    sql: ${Cat_Amount}

  - measure: count
    type: count
    drill_fields: []