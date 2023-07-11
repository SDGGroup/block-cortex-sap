view: budget_test_data_gsheet {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: `cortex-source-378009.test_data.BudgetTestData` ;;
  #
  # # Define your dimensions and measures here, like this:
  dimension: budget_test_data_gsheet_year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: budget_test_data_gsheet_month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: budget_test_data_gsheet_item {
    type: string
    sql: ${TABLE}.item ;;
  }

  measure: budget_test_data_gsheet_budget {
    type: sum
    sql: ${TABLE}.budget ;;
  }

  measure: budget_test_data_gsheet_forecast {
    type: sum
    sql: ${TABLE}.forecast ;;
  }

  dimension: budget_test_data_gsheet_country {
    type: string
    sql: ${TABLE}.country ;;
  }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: budget_test_data_gsheet {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
