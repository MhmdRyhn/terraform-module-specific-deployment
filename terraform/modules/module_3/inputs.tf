variable "prefix" {
  type        = string
  description = "A prefix that will be used with all the resource name."
}

variable "ssm_param_value" {
  type        = string
  description = "Value to be stored in SSM parameter store."
}
