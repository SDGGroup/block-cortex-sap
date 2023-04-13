view: budget_test_data {
  derived_table: {
    sql: select '2022' as year, '1' as month, '8278.99581616031' as budget, 'borgaro' as plant, 'italy' as nation
      union all select '2022', '2', '3000.49095105124', 'nave', 'italy'
      union all select '2022', '3', '6439.93144123373', 'pomezia', 'italy'
      union all select '2022', '4', '348.168740039787', 'parigi', 'france'
      union all select '2022', '5', '1463.4394361287', 'parigi', 'france'
      union all select '2022', '6', '6707.97513152116', 'parigi', 'france'
      union all select '2022', '7', '8913.1714907649', 'parigi', 'france'
      union all select '2022', '8', '4552.10453676376', 'pomezia', 'italy'
      union all select '2022', '9', '1526.20100874006', 'pomezia', 'italy'
      union all select '2022', '10', '4687.3953969783', 'borgaro', 'italy'
      union all select '2022', '11', '175.042823219081', 'borgaro', 'italy'
      union all select '2022', '12', '5495.91846474875', 'borgaro', 'italy'
      union all select '2023', '1', '537.018458486369', 'borgaro', 'italy'
      union all select '2023', '2', '6933.69660925451', 'borgaro', 'italy'
      union all select '2023', '3', '1784.38535755729', 'nave', 'italy'
      union all select '2023', '4', '6368.35540795287', 'nave', 'italy'
      union all select '2023', '5', '3929.30173686424', 'nave', 'italy'
      union all select '2023', '6', '8070.37159130088', 'nave', 'italy'
      union all select '2023', '7', '6102.59933502551', 'parigi', 'france'
      union all select '2023', '8', '7065.90156104029', 'parigi', 'france'
      union all select '2023', '9', '9968.72908218322', 'pomezia', 'italy'
      union all select '2023', '10', '6707.39189860347', 'borgaro', 'italy'
      union all select '2023', '11', '6395.85230147071', 'borgaro', 'italy'
      union all select '2023', '12', '1908.38534478101', 'nave', 'italy'
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }

  dimension: plant {
    type: string
    sql: ${TABLE}.plant ;;
  }

  dimension: nation {
    type: string
    sql: ${TABLE}.nation ;;
  }

  set: detail {
    fields: [year, month, budget, plant, nation]
  }
}
