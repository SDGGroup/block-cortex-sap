constant: CONNECTION_NAME {
  value: "cortex-target"
  export: override_required
}

constant: GCP_PROJECT {
  value: "cortex-target"
  export: override_required
}

constant: GCP_PROJECT_GOLDEN {
  value: "cortex-source-378009"
  export: override_required
}

constant: REPORTING_DATASET {
  value: "cortex_reporting"
  export: override_required
}

constant: GOLDEN_COPY_DATASET {
  value: "cortex_replication"
  export: override_required
}

constant: CLIENT {
  value: "100"
  export: override_required
}

constant: FUNCTION_DATASET {
  value: ""
  export: override_required
}
