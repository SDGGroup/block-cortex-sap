view: vbak_golden_copy {

  sql_table_name: `@{GCP_PROJECT_GOLDEN}.@{GOLDEN_COPY_DATASET}.vbak`
    ;;

  dimension: sales_order_header_code {
    type: string
    sql: ${TABLE}.VBELN ;;
  }
}
