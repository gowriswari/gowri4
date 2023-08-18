connection: "gowri-bq-connect1"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: pro1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pro1_default_datagroup

explore: connection_reg_r3 {}

