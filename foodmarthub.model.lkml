connection: "foodmarthub"

# include all the views
include: "*.view"

datagroup: foodmarthub_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: foodmarthub_default_datagroup

# used to drive roadrace
explore: rrmetrics {}
