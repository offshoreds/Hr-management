- view: spend_state
  sql_table_name: looker.SPEND_STATE
  fields:
  
  # DIMENSIONS #
  

  
  - dimension: spend_amount
    type: number
    hidden: true
    sql: ${TABLE}.SPEND_AMOUNT
    
    
  - dimension: state
    label: 'State Name'
    type: string
    sql: ${TABLE}.STATE
    
    
  
    
  # MEASURES
  
  - measure: total_spend_amount
    type: sum
    label: 'Amount Spend'
    value_format: '$0.##,, " M"'
    sql: ${spend_amount}
    links:
    - label: Spend Detail report
      url: /explore/Spend_Analytics/spend_transactions?fields=spend_transactions.Invoice_Date,spend_transactions.Invoice_Type,spend_transactions.Invoiced_Quantity_m,spend_transactions.Invoiced_Amount_m
    
    
      
