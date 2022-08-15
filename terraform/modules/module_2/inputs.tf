variable "prefix" {
  type        = string
  description = "A prefix that will be used with all the resource name."
}

variable "function_name" {}

variable "filename" {}

variable "source_code_hash" {}

variable "runtime" {
  default = "python3.8"
}

variable "handler" {}
