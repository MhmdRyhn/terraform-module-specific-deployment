# Terraform Module Specific Deployment
Deploy a subset of independent (loosely coupled) **Terraform** modules from all the available modules.

This is a POC about how the module specific deployment can be used to deploy the relevant changes only.

This kind of strategy can be managed from a CI/CD pipeline. In the pipeline, maybe there are options 
to select which modules are to be deployed. When the intended modules are selected before the deployment, 
only those modules (and their dependencies) will be deployed by terraform apply.

The modules are not necessary to be local, they can come from remote location too. In that case, the 
modules are to be downloaded to the path specified in `source` before running "terraform apply" command.
