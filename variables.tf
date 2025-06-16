variable "projectid" {
  type = string
}

variable "region" {
  type = string
  default = "europe-west1"
}

variable "zone" {
  type=string
  default = "europe-west1-c"
}

variable "credentialfile" {
  type = string
}

variable "vm_count" {
  type = number
}

variable "firewall_name" {
  type = string
}

variable "network_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "disk_size" {
  type = number
  default= 10
}
