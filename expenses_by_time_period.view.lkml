view: expenses_by_time_period {
  sql_table_name: HRM.EXPENSES_BY_TIME_PERIOD ;;

  dimension: amount_spent {
    type: string
    sql: ${TABLE}.AMOUNT_SPENT ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  #measures

  measure: amount_spent_m {
    type: sum
    label: "Amount Spent"
    value_format: "$0,, \" M\""
    sql: ${amount_spent} ;;

    link: {
      label: "Employee Expenses details"
      url: "/dashboards/39"
    }
  }

  measure: amount_spent_mm {
    type: sum
    label: "Amount Spent"
    value_format: "$#,###"
    sql: ${amount_spent}/10 ;;
  }

  measure: amount_spent_m_2015 {
    type: sum
    label: "Amount Spent 2015"
    value_format: "$0,, \" M\""
    sql: ${amount_spent} ;;

    filters: {
      field: year
      value: "2015"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
