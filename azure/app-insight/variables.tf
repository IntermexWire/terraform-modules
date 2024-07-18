variable "name" {
  description = "Name of the resource group"
  type        = string
}

variable "locations" {
  description = "Locations of the app service plans"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string)
  default     = {}
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Application Insights component."
  type        = string
}

variable "application_type" {
  description = "(Required) Specifies the type of Application Insights to create.."
  type        = string
  default     = "web"
}

variable "workspace_id" {
  description = "(Required) Specifies the id of a log analytics workspace resource."
  type        = string
}

variable "action_grp_name" {
  description = "(Required) The resource name of the Action Group."
  type        = string
}

variable "action_grp_short_name" {
  description = "(Required) The short name of the action group. This will be used in SMS messages"
  type        = string
}

variable "smart_alert_rule_name" {
  description = "(Required) The resource name of the Smart ALert Rule."
  type        = string
}

variable "smart_alert_rule_severity" {
  description = "(Required) Specifies the severity of this Smart Detector Alert Rule. Possible values are Sev0, Sev1, Sev2, Sev3 or Sev4."
  type        = string
}

variable "smart_alert_rule_scope_resource_ids" {
  description = "(Required) Specifies the scopes of this Smart Detector Alert Rule."
  type        = list(string)
}

variable "smart_alert_rule_frequency" {
  description = "(Required) Specifies the frequency of this Smart Detector Alert Rule in ISO8601 format."
  type        = string
  default     = "PT1M" # Every 15 minute
}

variable "smart_alert_rule_detector_type" {
  description = "(Required) Specifies the Built-In Smart Detector type that this alert rule will use. Currently the only possible values are FailureAnomaliesDetector, RequestPerformanceDegradationDetector, DependencyPerformanceDegradationDetector, ExceptionVolumeChangedDetector, TraceSeverityDetector, MemoryLeakDetector."
  type        = string
  default     = "FailureAnomaliesDetector"
}

variable "smart_alert_rule_action_group_ids" {
  description = "(Required) Specifies the action group ids."
  type        = list(string)
}