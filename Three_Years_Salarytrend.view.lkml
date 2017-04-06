view: threeyears_saltrend {
  sql_table_name: HRM.THREEYEARS_SALTREND ;;

  dimension: average_annual_base_salary {
    type: string
    sql: ${TABLE}.AVERAGE_ANNUAL_BASE_SALARY ;;
  }

  dimension: employee_head_count {
    type: string
    sql: ${TABLE}.EMPLOYEE_HEAD_COUNT ;;
  }

  dimension: total_annual_base_salary {
    type: string
    sql: ${TABLE}.TOTAL_ANNUAL_BASE_SALARY ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  dimension: total_base_salary {
    type: string
    sql: ${TABLE}.total_base_salary ;;
  }

  # measures
  # - measure: average_annual_base_salary_m
  #    type: avg
  #    value_format: '$0.##,, " M"'
  #    label: 'Average Annual Base Salary'
  #    sql: ${total_annual_base_salary}/10

  measure: employee_head_count_m {
    label: "Employee Headcount"
    type: sum
    sql: ${employee_head_count} ;;
  }

  measure: total_annual_base_salary_m {
    type: sum
    value_format: "$0.###,, \" M\""
    label: "Total Annual Base Salary"
    sql: ${total_base_salary} ;;

   # link: {
   #   label: "Expenses Details"
     # url: "/explore/Human_Resource_Management/performance_base?fields=performance_base.performance_brand,performance_base.total_annual_base_salary_m,performance_base.avg_annual_base_salary_m,performance_base.full_base_salary_m,performance_base.max_annual_base_salary_m,performance_base.min_annual_base_salary_m"
   # }
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
