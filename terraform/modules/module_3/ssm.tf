resource "aws_ssm_parameter" "non_sensitive_credentials" {
  name        = "${var.prefix}-non-sensitive-credentials"
  type        = "String"
  value       = var.ssm_param_value
  description = "Credentials which is not much sensitive."

  lifecycle {
    create_before_destroy = true
  }
}
