resource "aws_lambda_function" "lambda_function" {
  function_name    = "${var.prefix}-${var.function_name}"
  filename         = var.filename
  source_code_hash = var.source_code_hash
  handler          = var.handler
  role             = aws_iam_role.lambda_execution_role.arn
  runtime          = var.runtime
  memory_size      = 128 // MB
  timeout          = 30  // Seconds
  lifecycle {
    create_before_destroy = true
  }
}

data "aws_iam_policy_document" "lambda_execution_role_document" {
  statement {
    sid     = "LambdaExecutionRole"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

resource "random_string" "random" {
  length  = 8
  special = false
}

resource "aws_iam_role" "lambda_execution_role" {
  name               = "${var.prefix}-lambda-role-${random_string.random.result}"
  assume_role_policy = data.aws_iam_policy_document.lambda_execution_role_document.json
}
