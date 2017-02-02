view: top_spenders {
  sql_table_name: HRM.TOP_SPENDERS ;;

  dimension: category_spent {
    type: string
    sql: ${TABLE}.CATEGORY_SPENT ;;
  }

  dimension: emp_id {
    type: string
    sql: ${TABLE}.EMP_ID ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.EMPLOYEE_NAME ;;
  }

  dimension: percent_of_total {
    type: string
    sql: ${TABLE}.PERCENT_OF_TOTAL ;;
  }

  dimension: total_spent {
    type: string
    sql: ${TABLE}.TOTAL_SPENT ;;
  }

  # measures

  measure: percent_of_total_m {
    type: sum
    label: "Percent Of Total"
    value_format: "0\%"
    sql: ${percent_of_total}/100 ;;
  }

  measure: total_spent_m {
    type: sum
    label: "Total Amount Spent"
    value_format: "$#,##0"
    sql: ${total_spent} ;;
  }

  measure: count {
    type: count
    drill_fields: [employee_name]
  }
}
