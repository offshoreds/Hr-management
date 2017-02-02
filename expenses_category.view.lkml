view: expenses_category {
  sql_table_name: HRM.EXPENSES_CATEGORY ;;

  dimension: category {
    type: string
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: expense_amount {
    type: string
    sql: ${TABLE}.EXPENSE_AMOUNT ;;
  }

  # measures

  measure: expense_amount_m {
    type: sum
    value_format: "$0.##,, \" M\""
    label: "Expense Amount"
    sql: ${expense_amount} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
