variable "repository" {
  type        = string
  description = "Github repository name"
}


variable "environment" {
  type        = string
  description = "Name of the Github environment in the repository"
}


variable "secret_name" {
  type        = string
  description = "Name of the secret"
}


variable "plaintext_value" {
  type        = string
  description = "Plaintext value of the secret to be encrypted."
}
