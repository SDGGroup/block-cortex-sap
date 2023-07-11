connection: "cortex-target"

include: "/views/budget_test_data_gsheet.view"                # include all views in the views/ folder in this project
# include: "/views/countries_md.view"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: budget_test_data_gsheet {
#  join: countries_md {
#    type: left_outer
#    relationship: one_to_many
#    sql_on: ${budget_test_data_gsheet.budget_test_data_gsheet_country}=${countries_md.country_key_land1} ;;
#  }
}
