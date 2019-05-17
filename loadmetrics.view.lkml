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

  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_loaded_millions
  {
    type: sum
    sql: ${rowsloaded}/1000/1000   ;;

  }

  measure: progress {type: number sql: 1.0*(${total_loaded_millions});;
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
