terraform {
  required_providers {
    azurerm = { 
      source = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" { 
    resource_group_name = "tfstate"
    storage_account_name = "tfstate16098"
    container_name = "tfstate"
    key = "gitlab-runner"
  }
}

resource "helm_release" "gitlab-runner" {
  name       = var.name
  repository = "https://charts.gitlab.io/"
  chart      = "gitlab-runner"
  namespace  = var.namespace
  create_namespace = true
  timeout    = 600
  replace    = true

  set {
    name  = "gitlab.url"
    value = var.gitlab_url
  }

  set {
    name  = "runnerRegistrationToken"
    value = var.runner_registration_token
  }
}
