include: "/Base_model/base_views/order_items.view.lkml"
view: +order_items {
  sql_table_name: `ant-billet-looker-core-argolis.{{_user_attributes['customer_name']}}.order_items` ;;

  dimension: customer_a_custom_1 {
    type: string
    sql: ${TABLE}.customer_a_custom_1 ;;
  }
  dimension: customer_a_custom_2 {
    type: string
    sql: ${TABLE}.customer_a_custom_2 ;;
  }

}
