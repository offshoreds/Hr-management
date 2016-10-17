- view: spend_transactions
  sql_table_name: LOOKER.SPEND_TRANSACTIONS
  fields:

  - dimension: Invoice_Date
    type: date
    sql: ${TABLE}.INVOICE_DATE


  - dimension: Invoice_Number
    type: string
 
    sql: ${TABLE}.INVOICE_NUMBER


  - dimension: Item_Description
    type: string
    sql: ${TABLE}.ITEM_DESCRIPTION

    
  - dimension: Invoice_Type
    type: string
    sql: ${TABLE}.INVOICE_TYPE
    
    
  
  - dimension: Supplier_Name
    type: string
    sql: ${TABLE}.SUPPLIER_NAME

  - dimension: Invoiced_Amount
    type: string
    hidden: true
    sql: ${TABLE}.INVOICED_AMOUNT



  - dimension: Invoiced_Quantity
    type: string
    hidden: true
    sql: ${TABLE}.INVOICED_QUANTITY


    
  - dimension: Contract_Spend
    type: string
    hidden: true
    sql: ${TABLE}.CONTRACT_SPEND
    
  
  - dimension: Off_Contract_Spend
    type: string
    hidden: true
    sql: ${TABLE}.OFF_CONTRACT_SPEND



    
  - dimension: Contract_Leakage
    type: string
    hidden: true
    sql: ${TABLE}.CONTRACT_LEAKAGE



    
  # measures 
  
  - measure: Invoiced_Amount_m
    type: sum
    label: 'Invoice Amount'
    value_format: '$#,###'
    sql: ${Invoiced_Amount}/10000



  - measure: Invoiced_Quantity_m
    type: sum
    label: 'Invoice Quantity'
    value_format: '#,###'
    sql: ${Invoiced_Quantity}


    
  - measure: Contract_Spend_m
    type: sum
    value_format: '$#,###'
    label: 'Contract Amount Spend'
    sql: ${Invoiced_Amount}/10000*0.12
    
  
  - measure: Off_Contract_Spend_m
    type: sum
    label: 'Off Contract Amount Spend'
    value_format: '$#,###'
    sql: ${Off_Contract_Spend}


    
  - measure: Contract_Leakage_m
    type: sum
    value_format: '$#,###'
    label: 'Contract Leakage Amount'
    sql: ${Invoiced_Amount}/10000*0.05








