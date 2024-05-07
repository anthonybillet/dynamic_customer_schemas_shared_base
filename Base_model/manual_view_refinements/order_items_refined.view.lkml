include: "/Base_model/base_views/order_items.view.lkml"
view: +order_items {
  sql_table_name: `ant-billet-looker-core-argolis.{{_user_attributes['schema_name']}}.order_items` ;;


  measure: total_sales {
    type: sum
    value_format_name: usd
    sql: ${sale_price} ;;
  }

  measure: count {
    label: "Count Order Items"
  }

  measure: count_orders {
    label: "Count Orders"
    type: count_distinct
    sql: ${order_id} ;;
  }

  # dimension: customer_a_custom_1 {
  #   type: string
  #   sql: ${TABLE}.customer_a_custom_1 ;;
  # }
  # dimension: customer_a_custom_2 {
  #   type: string
  #   sql: ${TABLE}.customer_a_custom_2 ;;
  # }

}
