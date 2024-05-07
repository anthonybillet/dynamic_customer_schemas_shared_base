include: "/Base_model/base_views/users.view.lkml"
view: +users {
  sql_table_name: `ant-billet-looker-core-argolis.{{_user_attributes['customer_name']}}.users` ;;

  dimension: customer_a_custom_1 {
    type: string
    sql: ${TABLE}.customer_a_custom_1 ;;
  }
  dimension: customer_a_custom_2 {
    type: string
    sql: ${TABLE}.customer_a_custom_2 ;;
  }

}