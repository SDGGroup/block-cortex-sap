test: is_there_null_sales_order_header_code {
  explore_source: vbak_golden_copy {

    column: sales_order_header_code {}
  }
  assert: sales_order_header_code_value {
    expression: NOT is_null(${vbak_golden_copy.sales_order_header_code}) ;;
  }
}

test: is_there_null_sales_order_header_code_1 {
  explore_source: vbak_golden_copy {

    column: sales_order_header_code {}
  }
  assert: sales_order_header_code_value {
    expression: is_null(${vbak_golden_copy.sales_order_header_code}) ;;
  }
}
