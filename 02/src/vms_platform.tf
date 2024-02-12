# variable "vm_web_name" {
#   type        = string
#   default     = "netology-develop-platform-web"
# }

# variable "vm_web_cores" {
#   type        = number
#   default     = 2
# }

# variable "vm_web_memory" {
#   type        = number
#   default     = 1
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 5
# }

variable "vm_web_zone" {
  type        = string
  default     = "ru-central1-a"
 }

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
 }

# variable "vm_db_cores" {
#  type        = number
#  default     = 2
# }

# variable "vm_db_memory" {
#  type        = number
#  default     = 2
# }

# variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
# }

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
}
variable "vms_resources" {
  description = "Resources for all vms"
  type        = map(map(number))
  default     = {
    vm_web_resources = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    vm_db_resources = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}
variable "vms_metadata" {
  description = "metadata for all vms"
  type        = map(string)
  default     = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGn2skwgquOtOAocTzWWeUB/CEqtY/MN3KZTGrfiu5N5 goddim@goddim-VirtualBox"
  }
}