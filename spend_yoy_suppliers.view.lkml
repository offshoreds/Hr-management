view: spend_yoy_suppliers {
  sql_table_name: procurement.SPEND_YOY_SUPPLIERS ;;

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: spend_amount_ys {
    type: string
    hidden: yes
    sql: ${TABLE}.SPEND_AMOUNT ;;
  }

  dimension: suppliers {
    type: string
    sql: ${TABLE}.SUPPLIERS ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  measure: spend_amount_ysm {
    type: sum
    label: "Spend Amount"
    value_format: "$#,##0.00"
    sql: ${spend_amount_ys} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
