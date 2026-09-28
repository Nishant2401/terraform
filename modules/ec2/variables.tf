variable "instances" {
  description = "Map of instance configs, keyed by instance name"
  type = map(object({
    instance_type   = string
    ami_id          = string
    root_volume_type = string
    root_volume_size = number
    key_name        = string
    environment     = string
    owner           = string
  }))
}