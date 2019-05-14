connection: "foodmarthub"

# include all the views
include: "*.view"

datagroup: foodmarthub_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "0 seconds"
}

persist_with: foodmarthub_default_datagroup

# used to drive roadrace
explore: rrstatus {}

explore: rrinfo {}

explore: querymetrics {}

explore: loadmetrics {}
