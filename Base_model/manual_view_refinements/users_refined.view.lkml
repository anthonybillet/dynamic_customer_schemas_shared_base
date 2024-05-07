include: "/Base_model/base_views/users.view.lkml"
view: +users {
  sql_table_name: `ant-billet-looker-core-argolis.{{_user_attributes['schema_name']}}.users` ;;

  dimension: full_name {
    type: string
    sql: CONCAT(${first_name}, ' ', ${last_name}) ;;
  }

  measure: count {
    label: "Count Users"
  }

}
