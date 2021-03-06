view: top_business_unit {
  sql_table_name: HRM.TOP_BUSINESS_UNIT ;;

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: business_unit_id {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT_ID ;;
  }

  dimension: expense_amount {
    type: string
    sql: ${TABLE}.EXPENSE_AMOUNT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
