condition = {
  "condition1" = {
    account_id                     = 4043696
    type                           = "NRQL"
    name                           = "Condition 1 Name"
    description                    = "Condition 1 Description"
    runbook_url                    = "https://example.com/runbook1"
    enabled                        = true
    violation_time_limit_seconds   = 3600
    fill_option                    = "static"
    fill_value                     = 0
    aggregation_window             = 5
    aggregation_method             = "average"
    aggregation_delay              = 180
    expiration_duration            = 86400
    open_violation_on_expiration   = false
    close_violations_on_expiration = true
    slide_by                       = 1
    baseline_direction             = "below"
    query                          = "SELECT average(duration) FROM Transaction WHERE appName = 'MyApp' FACET name LIMIT 1"
    operator                       = "above"
    threshold                      = 2000
    threshold_duration             = 5
    threshold_occurrences          = 2
  },
  "condition2" = {
    account_id                     = 4043696
    type                           = "NRQL"
    name                           = "Condition 2 Name"
    description                    = "Condition 2 Description"
    runbook_url                    = "https://example.com/runbook2"
    enabled                        = true
    violation_time_limit_seconds   = 1800
    fill_option                    = "linear"
    fill_value                     = 0
    aggregation_window             = 10
    aggregation_method             = "sum"
    aggregation_delay              = 300
    expiration_duration            = 43200
    open_violation_on_expiration   = true
    close_violations_on_expiration = true
    slide_by                       = 2
    baseline_direction             = "above"
    query                          = "SELECT count(*) FROM Transaction WHERE appName = 'MyApp' FACET name LIMIT 1"
    operator                       = "below"
    threshold                      = 100
    threshold_duration             = 10
    threshold_occurrences          = 3
  }
}
