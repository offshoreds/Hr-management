view: expenses_by_day {
  sql_table_name: HRM.EXPENSES_BY_DAY ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.DAY ;;
  }

  dimension: expenses {
    type: string
    sql: ${TABLE}.EXPENSES_ ;;
  }

  dimension: reports_submitted {
    type: string
    sql: ${TABLE}.REPORTS_SUBMITTED ;;
  }

  dimension: spent_d {
    type: string
    hidden: yes
    sql: ${TABLE}.SPENT_D ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: Year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: Quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: New_Expenses {
    type: string
    hidden: yes
    sql: ${TABLE}.NEW_EXPENSES ;;
  }

  dimension: New_Reports {
    type: string
    hidden: yes
    sql: ${TABLE}.NEW_REPORTS ;;
  }

  # MEASURES


  measure: expenses_m {
    type: sum
    label: "Expenses"
    value_format: "$#,##0"
    sql: ${New_Expenses} ;;
  }

  measure: reports_submitted_m {
    type: sum
    label: "# Of Reports Submitted"
    sql: ${New_Reports} ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
