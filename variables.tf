variable "name" {
    type = string
    description = "Name of the deployment on K8s"
    default = "gitlab-runner"
}
variable "namespace" {
    type = string
    description = "K8s namespace for the installation (will be created)"
    default = "gitlab"
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

variable "runners_image" {
    type        = string
    description = "Image to use for the gitlab runner"
    default     = "docker:20.10.16"
}

variable "runners_privileged" {
    type        = bool
    description = "Run jobs in privileged containers? Needed for Docker in Docker"
    default     = true
}