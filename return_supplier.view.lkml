view: returns_supplier {
  sql_table_name: procurement.RETURNS_SUPPLIER ;;

  dimension: returned_amount {
    type: string
    sql: ${TABLE}.RETURN_AMOUNT ;;
  }

  dimension: supplier {
    type: string
    label: "Supplier Name"
    sql: ${TABLE}.SUPPLIER ;;
  }

  # measures

  measure: returned_amount_m {
    type: sum
    label: "Returned Amount"
    value_format: "$#,##0"
    sql: ${returned_amount} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
