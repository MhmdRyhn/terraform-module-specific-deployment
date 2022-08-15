# This script can be used as needed. I just put the following commands to track the terraform commands
# for the POC about the module specific deployment.

# AWS_PROFILE=***** DEFAULT_REGION=eu-west-1 terraform plan -target="module.module_one" -out="tfplan"
# AWS_PROFILE=***** DEFAULT_REGION=eu-west-1 terraform plan -target="module.module_two" -out="tfplan"
# AWS_PROFILE=***** DEFAULT_REGION=eu-west-1 terraform apply "tfplan"
# AWS_PROFILE=***** DEFAULT_REGION=eu-west-1 terraform destroy -target="module.module_one" --auto-approve
# AWS_PROFILE=***** DEFAULT_REGION=eu-west-1 terraform destroy -target="module.module_two" --auto-approve
