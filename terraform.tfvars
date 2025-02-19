//acr
acr_name            = "toch"
location            = "UK South"
resource_group_name = "toch-deployment"

//aks
cluster_name        = "demo-aks-cluster"
dns_prefix          = "taskaks"

tags = {
  Environment = "Dev"
  Project     = "Demo"
}
