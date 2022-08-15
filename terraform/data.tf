data "archive_file" "lambda_zip_file" {
  output_path = "${local.lambda_artifact_directory}/${local.lambda_function_name}.zip"
  source_dir  = "${path.module}/../src"
  excludes    = ["__pycache__", "*.pyc"]
  type        = "zip"
}
