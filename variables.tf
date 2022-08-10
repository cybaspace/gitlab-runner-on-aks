variable "name" {
    type = string
    description = "Name of the deployment on K8s"
    default = "gitlab-runner"
}
variable "namespace" {
    type = string
    description = "K8s namespace for the installation (will be created)"
    default = "gitlab-runner"
}
variable "gitlab_url" {
    type = string
    description = "Url of the gitlab server"
}
variable "runner_registration_token" {
    type        = string
    description = "Token to register new runner at server"
    sensitive   = true
}
