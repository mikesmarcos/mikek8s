variable "region" {
  type    = string
  default = "us-east-1"
}
variable "profile" {
  type = string
  # Usando o nome do profile armazenado em ~/.aws/credentials
  default = "mfa-mike"
}