module "module_one" {
  source = "./modules/module_1"
  prefix = var.prefix
}


module "module_two" {
  source           = "./modules/module_2"
  prefix           = var.prefix
  function_name    = local.lambda_function_name
  filename         = data.archive_file.lambda_zip_file.output_path
  source_code_hash = data.archive_file.lambda_zip_file.output_base64sha256
  handler          = "src.lambda_function.handler"
}

module "module_three" {
  source          = "./modules/module_3"
  prefix          = var.prefix
  ssm_param_value = "username:password"
}
