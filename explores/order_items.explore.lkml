include: "/Base_model/base_views/**.view.lkml"
include: "/Base_model/manual_view_refinements/**.view.lkml"

explore: order_items {
  join: users {
    type: left_outer
    relationship: many_to_one
    sql_on: ${order_items.user_id} = ${users.id} ;;
  }
}
