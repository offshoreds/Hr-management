view: agreement_leakage {
  sql_table_name: procurement.AGREEMENT_LEAKAGE ;;

  dimension: amount {
    type: string
    sql: ${TABLE}.AMOUNT ;;
  }

  dimension: business_id {
    type: string
    hidden: yes
    sql: ${TABLE}.BUSINESS_ID ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}.BUSINESS_NAME ;;
  }

  dimension: business_unit {
    type: string
    sql: ${TABLE}.BUSINESS_UNIT ;;
  }

  dimension: Amount_Spend {
    type: string
    sql: ${TABLE}.AMOUNT_SPEND ;;
  }

  # measures

  measure: amount_m {
    type: sum
    value_format: "$#,##0"
    label: "Contract Leakage Amount"
    sql: ${amount} ;;
  }

  measure: amount_m_s {
    type: sum
    value_format: "$#,##0"
    label: "Amount Spend"
    sql: ${Amount_Spend} ;;
  }

  measure: count {
    type: count
    drill_fields: [business_name]
  }
}
