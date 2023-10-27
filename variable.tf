 variable "condition" {
  type = map(object({
    account_id                     = string
    type                           = string
    name                           = string
    description                    = string
    runbook_url                    = string
    enabled                        = bool
    violation_time_limit_seconds   = number
    fill_option                    = string
    fill_value                     = number
    aggregation_window             = number
    aggregation_method             = string
    aggregation_delay              = number
    expiration_duration            = number
    open_violation_on_expiration   = bool
    close_violations_on_expiration = bool
    slide_by                       = number
    baseline_direction             = string
    query                          = string
    operator                       = string
    threshold                      = number
    threshold_duration             = number
    threshold_occurrences          = number
  }))
}
