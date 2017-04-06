view: receipt_date {
  sql_table_name: procurement.RECEIPT_DATE ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: percent_reception {
    type: string
    sql: ${TABLE}.PERCENT_RECEPTION ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: Reception_P {
    type: string
    hidden: yes
    sql: ${TABLE}.RECEPTION_P ;;
  }

  dimension: Recept_A {
    type: string
    sql: ${TABLE}.RECEPT_A ;;
  }

  # measures

  measure: amount_m {
    type: sum
    label: "Receipt Date Exception Amount"
    value_format: "$#,##0"
    sql: ${Recept_A} ;;
  }

  measure: percent_reception_m {
    type: sum
    value_format: "#,##0%"
    label: "Receipt Date Exception Percent"
    sql: ${Reception_P} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
