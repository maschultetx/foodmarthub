view: rrinfo {
  sql_table_name: administrator.rrinfo ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  dimension: load_fact_count {
    type: number
    sql: ${TABLE}.load_fact_count ;;
  }

  dimension: numloops {
    type: number
    sql: ${TABLE}.numloops ;;
  }

  dimension: numqueries {
    type: number
    sql: ${TABLE}.numqueries ;;
  }

  dimension: numusers {
    type: number
    sql: ${TABLE}.numusers ;;
  }

  dimension: orig_fact_count {
    type: number
    sql: ${TABLE}.orig_fact_count ;;
  }

  dimension: waitsecs {
    type: number
    sql: ${TABLE}.waitsecs ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
