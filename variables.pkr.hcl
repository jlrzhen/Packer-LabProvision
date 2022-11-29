variable "node" {
    type = string
}

variable "proxmox_url" {
    type = string
}

variable "pve_token" {
    type = string
    sensitive = true
}

variable "pve_username" {
    type = string
}