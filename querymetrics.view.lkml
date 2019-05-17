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

  dimension: dummy_count {
    type: number
    sql: ${TABLE}.dummy_count ;;
  }

  dimension: queryloopuser {
    type: string
    sql: ${TABLE}.queryloopuser ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: avg_execution_time {
    type: average
    value_format:"#.0;"
    sql: ${executiontimeseconds} ;;

    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chds=1,125&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;

  }

  measure: avg_execution_time_small {
    # this guage has a smaller range.
    type: average
    value_format:"#.0;"
    sql: ${executiontimeseconds} ;;

    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|slow|fast&chco=FF0000,FF8040,FFFF00,00FF00&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    #html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chds=1,125&chma=10,0,0,0&chxt=y&chxr=0,50,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;
    html:   <img src="https://chart.googleapis.com/chart?chs=200x125&cht=gom&chma=10,0,0,0&chxt=y&&chds=0,10&chxr=0,10,2&chxl=0:|fast|slow&chco=00FF00,FFFF00,FF8040,FF0000&chf=bg,s,FFFFFF00&chl={{ rendered_value }}&chd=t:{{ value }}">;;

  }

  measure: number_of_queries {
    type: sum
    sql: ${dummy_count} ;;

  }

  measure: progress {type: number sql: 1.0*(${number_of_queries});;
    html: <div style="float: left
          ; width:{{ value | times:100}}%
          ; background-color: rgba(0,180,0,{{ value | times:100 }})
          ; text-align:left
          ; color: #FFFFFF
          ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 4px;">{{ value | times:100 }}%</p>
          </div>
          <div style="float: left
          ; width:{{ 1| minus:value | times:100}}%
          ; background-color: rgba(0,180,0,0.1)
          ; text-align:right
          ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 0px; color:rgba(0,0,0,0.0" )>{{value}}</p>
          </div>
      ;;
  }
}
