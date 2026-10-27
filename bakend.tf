terraform {
  backend "azurerm" {
    # use_msi              = true                                    # Can also be set via `ARM_USE_MSI` environment variable.
    # tenant_id            = "ac1c227f-0244-41e3-9e0e-d190ebff9f7d"  # Can also be set via `ARM_TENANT_ID` environment variable.
    # subscription_id      = "88d7943d-f198-4c86-8a01-d8564a766877"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    # client_id            = "7206b7e6-165a-4dec-8b14-b791ff9f3a52"  # Can also be set via `ARM_CLIENT_ID` environment variable. Not required for System Assigned Managed Identity.
    resource_group_name  = "tfstate"          # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "tfstatemyzo"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "tfstate"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
