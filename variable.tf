variable "devs" {
  type    = list(string)
  sensitive = true
}

variable "github_token" {
  type      = string
  sensitive = true 
}

variable "github_owner" {
  type = string
  sensitive = true
}
