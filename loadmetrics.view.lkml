view: loadmetrics {
  sql_table_name: administrator.loadmetrics ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: rowsloaded {
    type: number
    sql: ${TABLE}.rowsloaded ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_loaded {
    type: sum
    sql: ${rowsloaded} ;;

  }

}
