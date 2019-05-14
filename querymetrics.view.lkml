view: querymetrics {
  sql_table_name: administrator.querymetrics ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: executiontimeseconds {
    type: number
    sql: ${TABLE}.executiontimeseconds ;;
  }

  dimension: queryloopuser {
    type: string
    sql: ${TABLE}.queryloopuser ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_execution_time {
    type: average
    sql: ${executiontimeseconds} ;;

  }
}
