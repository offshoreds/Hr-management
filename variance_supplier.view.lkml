view: variance_supplier {
  sql_table_name: procurement.VARIANCE_SUPPLIER ;;

  dimension: invoice_amount {
    type: string
    sql: ${TABLE}.INVOICE_AMOUNT ;;
  }

  dimension: invoice_percent {
    type: string
    sql: ${TABLE}.INVOICE_PERCENT ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.SUPPLIER ;;
  }

  dimension: Invoice_A {
    type: string
    hidden: yes
    sql: ${TABLE}.INVOICE_a ;;
  }

  # measures

  measure: invoice_amount_m {
    type: sum
    label: "Invoice Price Variance Amount"
    value_format: "$0.##,, \" M\""
    sql: ${Invoice_A} ;;
  }

  measure: invoice_amount_mM {
    type: sum
    label: "Invoice Price Variance Amount"
    value_format: "$#,##0"
    sql: ${invoice_amount} ;;
  }

  measure: invoice_percent_m {
    type: sum
    value_format: "0\%"
    label: "Invoice Price Variance %"
    sql: ${invoice_percent} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
