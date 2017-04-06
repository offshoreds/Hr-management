view: spend_transactions {
  sql_table_name: procurement.SPEND_TRANSACTIONS ;;

  dimension: Invoice_Date {
    type: date
    sql: ${TABLE}.INVOICE_DATE ;;
  }

  dimension: Invoice_Number {
    type: string
    sql: ${TABLE}.INVOICE_NUMBER ;;
  }

  dimension: Item_Description {
    type: string
    sql: ${TABLE}.ITEM_DESCRIPTION ;;
  }

  dimension: Invoice_Type {
    type: string
    sql: ${TABLE}.INVOICE_TYPE ;;
  }

  dimension: Supplier_Name {
    type: string
    sql: ${TABLE}.SUPPLIER_NAME ;;
  }

  dimension: Invoiced_Amount {
    type: string
    hidden: yes
    sql: ${TABLE}.INVOICED_AMOUNT ;;
  }

  dimension: Invoiced_Quantity {
    type: string
    hidden: yes
    sql: ${TABLE}.INVOICED_QUANTITY ;;
  }

  dimension: Contract_Spend {
    type: string
    hidden: yes
    sql: ${TABLE}.CONTRACT_SPEND ;;
  }

  dimension: Off_Contract_Spend {
    type: string
    hidden: yes
    sql: ${TABLE}.OFF_CONTRACT_SPEND ;;
  }

  dimension: Contract_Leakage {
    type: string
    hidden: yes
    sql: ${TABLE}.CONTRACT_LEAKAGE ;;
  }

  dimension: i_amount {
    type: string
    hidden: yes
    sql: ${TABLE}.I_AMOUNT ;;
  }

  dimension: c_s_amount {
    type: string
    hidden: yes
    sql: ${TABLE}.C_S_AMOUNT ;;
  }

  dimension: c_l_amount {
    type: string
    hidden: yes
    sql: ${TABLE}.C_L_AMOUNT ;;
  }

  # measures

  measure: Invoiced_Amount_m {
    type: sum
    label: "Invoice Amount"
    value_format: "$#,###"
    sql: ${i_amount} ;;
  }

  measure: Invoiced_Quantity_m {
    type: sum
    label: "Invoice Quantity"
    value_format: "#,###"
    sql: ${Invoiced_Quantity} ;;
  }

  measure: Contract_Spend_m {
    type: sum
    value_format: "$#,###"
    label: "Contract Amount Spend"
    sql: ${c_s_amount} ;;
  }

  measure: Off_Contract_Spend_m {
    type: sum
    label: "Off Contract Amount Spend"
    value_format: "$#,###"
    sql: ${Off_Contract_Spend} ;;
  }

  measure: Contract_Leakage_m {
    type: sum
    value_format: "$#,###"
    label: "Contract Leakage Amount"
    sql: ${c_l_amount} ;;
  }
}
