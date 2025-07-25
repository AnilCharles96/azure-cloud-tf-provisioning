## Provision infrastructure in Azure Cloud

### Change directory
```
cd terraform-azure
```

### Login to azure 
```
az login 
```

### Get subscription ID
```
az account list -o table
```

### Set if you have multiple subscription
```
az account set --subscription=<SUBSCRIPTION_ID>
```

### Set variable TF_VAR_subscription_id
```
export TF_VAR_subscription_id=<SUBSCRIPTION_ID>
```

### Download the provider configuration
```
terraform init
```

### Plan the changes
```
terrform plan
```

### Apply the changes
```
terraform apply 
# terraform apply --auto-approve
```

### Display outputs
```
terraform output storage_account_id
terraform output storage_account_primary_access_key
terraform output storage_account_primary_connection_string
terraform output storage_container_id
```

### To destroy the changes 
```
terraform destroy
```