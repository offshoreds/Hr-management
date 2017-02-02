view: new_hire_trend {
  sql_table_name: HRM.NEW_HIRE_TREND ;;

  dimension: month {
    type: string
    sql: ${TABLE}.MONTH ;;
  }

  dimension: new_hires_ytd {
    type: string
    sql: ${TABLE}.NEW_HIRES_YTD ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.YEAR ;;
  }

  # measures


  dimension: quarter {
    type: string
    sql: ${TABLE}.QUARTER ;;
  }

  measure: new_hires_ytd_m {
    label: "New Hires"
    type: sum
    sql: ${new_hires_ytd} ;;

    link: {
      label: "Recruitment Details"
      url: "/dashboards/40"
    }
  }

  measure: new_hires_ytd_m_2015 {
    label: "New Hires 2015"
    type: sum
    sql: ${new_hires_ytd} ;;

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
