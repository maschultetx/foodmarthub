view: rrmetrics {
  sql_table_name: administrator.rrmetrics ;;

  dimension: dbtype {
    type: string
    sql: ${TABLE}.dbtype ;;
  }

  measure: elapsed_seconds {
    type: sum
    sql:  ${TABLE}.elapsed_seconds ;;
  }

  measure: queries_served {
    type: sum
    sql: ${TABLE}.queries_served ;;
  }

  measure: queries_per_second {
    type: number
    sql: ${queries_served}/${elapsed_seconds} ;;
    value_format: "###.##"
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chco=635189,B1A8C4,1EA8DF,8ED3EF&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chtt=#+Queries+Served&chts=20&chma=10,0,0,0&chxt=y&chco=FF0000,FF8040,FFFF00,00FF00,00FFFF,0000FF,800080&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chtt=Mary&chma=10,0,0,0&chxt=y&chco=FF0000,FF8040,FFFF00,00FF00,00FFFF,0000FF,800080&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chtt=AvgExecutionSecs&chma=10,0,0,0&chxt=y&chxr=0,0,5&chxl=0:|slow|average|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|slow|average|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    }

  measure: num_loads {
    type: sum
    sql: ${TABLE}.num_loads ;;
  }

  measure: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: orig_fact_count {
    type: sum
    sql: ${TABLE}.orig_fact_count ;;
  }

  measure: rows_loaded_million {
    type: sum
    sql: ${TABLE}.rows_loaded_million ;;
  }

  measure: num_users {
    type: number
    sql: ${TABLE}.num_users ;;
  }

  measure: loop_count {
    type: number
    sql: ${TABLE}.loop_count ;;
  }
}
