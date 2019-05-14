view: rrstatus {
  sql_table_name: administrator.rrstatus ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
