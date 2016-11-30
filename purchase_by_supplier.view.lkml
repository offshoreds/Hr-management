view: purchase_by_supplier {
  sql_table_name: LOOKER.PURCHASE_BY_SUPPLIER ;;

  dimension: sup_amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: suplier {
    label: "Supplier"
    type: string
    sql: ${TABLE}.SUPLIER ;;
  }

  dimension: Amount_Spend {
    type: string
    sql: ${TABLE}.AMOUNT_SPEND ;;
  }

  # measures

  measure: sup_amount_m {
    label: "Non Negotiated Purchase Amount"
    value_format: "$#,##0"
    type: sum
    sql: ${sup_amount} ;;
  }

  measure: sup_amount_m_s {
    label: "Amount Spend"
    value_format: "$#,##0"
    type: sum
    sql: ${Amount_Spend} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
