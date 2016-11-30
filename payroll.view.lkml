view: payroll {
  sql_table_name: LOOKER.PAYROLL ;;

  dimension: overtime_expense {
    type: string
    sql: ${TABLE}.OVERTIME_EXPENSE ;;
  }

  dimension: payroll_expense {
    type: string
    sql: ${TABLE}.PAYROLL_EXPENSE ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: support_expense {
    type: string
    sql: ${TABLE}.SUPPORT_EXPENSE ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: Total_Payroll {
    type: string
    sql: ${TABLE}.TOTAL_PAYROLL ;;
  }

  dimension: Previous_Payroll {
    type: string
    sql: ${TABLE}.PREVIOUS_PAYROLL ;;
  }

  # mearures

  # - measure: overtime
  #  label: 'Overtime Expenses'
  #  type: sum
  #  value_format: '$#,##0'
  #  sql: ${overtime_expense}/10000


  measure: payroll_2015 {
    label: "Payroll Expenses 2015"
    value_format: "$0.##,, \" M\""
    type: sum
    sql: ${Previous_Payroll} ;;

    filters: {
      field: year
      value: "2015"
    }
  }

  measure: payroll {
    label: "Payroll Expenses"
    value_format: "$0.##,, \" M\""
    type: sum
    sql: ${Total_Payroll} ;;

    link: {
      label: "Employee Expenses details"
      url: "/dashboards/39"
    }
  }

  #  - measure: payroll_M
  #    label: 'Payroll Expenses'
  #    value_format: '$#,##0'
  #    type: sum
  #    sql: ${payroll_expense}/1000
  #    links:
  #    - label: Employee Expenses details
  #      url: /dashboards/39



  #  - measure: support
  #    type: sum
  #    value_format: '$#,##0'
  #    label: 'Support Expenses'
  #    sql: ${support_expense}*1000

  measure: count {
    type: count
    drill_fields: []
  }
}
