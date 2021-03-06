view: purchase_by_bu {
  sql_table_name: procurement.PURCHASE_BY_BU ;;

  dimension: bu_amount {
    type: string
    hidden: yes
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: business_unit {
    type: string
    label: "Business Unit"
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: purchase_a {
    type: string
    sql: ${TABLE}.PURCHASE_A ;;
  }

  # measures

  measure: amount_m {
    label: "Non-Negotiated Purchase Amount"
    value_format: "$#,##0"
    type: sum
    sql: ${purchase_a} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
