# Run terraform init to initialize the Terraform deployment. This command downloads the Azure provider required to manage your Azure resources.

terraform init -upgrade

# Run terraform plan to create an execution plan

terraform plan -out main.tfplan

Key points:

The terraform plan command creates an execution plan, but doesn't execute it. Instead, it determines what actions are necessary to create the configuration specified in your configuration files. This pattern allows you to verify whether the execution plan matches your expectations before making any changes to actual resources.
The optional -out parameter allows you to specify an output file for the plan. Using the -out parameter ensures that the plan you reviewed is exactly what is applied.
To read more about persisting execution plans and security, see the security warning section.

# Run terraform apply to apply the execution plan to your cloud infrastructure

terraform apply main.tfplan

Key points:

The example terraform apply command assumes you previously ran terraform plan -out main.tfplan.
If you specified a different filename for the -out parameter, use that same filename in the call to terraform apply.
If you didn't use the -out parameter, call terraform apply without any parameters.
