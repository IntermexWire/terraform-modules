variable "name" {
  description = "Resource name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Resource location"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the resource."
  type        = map(string)
}

variable "severity" {
  description = "The severity of the alert."
  type        = string
  default     = "Sev4"

}

variable "appi_insights_id" {
  description = "The ID of the Application Insights."
  type        = string
}

variable "frequency" {
  description = "The frequency of the alert."
  type        = string
  default     = "PT1M"

}
variable "detector_type" {
  description = "The detector type of the alert."
  type        = string
  default     = "FailureAnomaliesDetector"

}

variable "monitor_action_group_ids" {
  description = "The ID of the Monitor Action Group."
  type        = list(string)

}