# @options ["url", "repository"]
variable "source_type" {
  type = string
  description = "Source type of the chart"
  default = "url"
}

# @show_if "source_type=url"
variable "chart_url" {
  type = string
  description = "URL to download the chart"
  default = ""
}

# @show_if "source_type=repository"
variable "chart_repository" {
  type = string
  description = "Chart repository"
  default = ""
}

# @show_if "source_type=repository"
variable "chart_name" {
  type = string
  description = "Chart name"
  default = ""
}

# @show_if "source_type=repository"
variable "chart_version" {
  type = string
  description = "Chart version"
  default = ""
}

variable "values" {
  type = map(any)
  description = "Chart values in yaml format"
  default = null
}

# @hidden
variable "walrus_metadata_namespace_name" {
  type        = string
  description = "Walrus metadata namespace name."
  default     = ""
}

# @hidden
variable "walrus_metadata_service_name" {
  type        = string
  description = "Walrus metadata service name."
  default     = ""
}
