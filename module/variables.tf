variable "rg_name" {
    type = string
    default = ""
}

variable "region" {
    type = string
    default = ""
}
variable "vnet_name" {
    type = string
    default = ""
}
variable "vnet_cidr" {
    type = string
    default = ""
}
variable "public_subnet_name" {
    type = string
    default = ""
}
variable "public_subnet_cidr" {
    type = list(string)
    default = []
}
variable "nic_name" {
    type = string
    default = ""
}
variable "vm_name" {
    type = string
    default = ""
}
variable "vm_size" {
    type = string
    default = ""
}

variable "vm_count" {
    type = number
    default = 0
}