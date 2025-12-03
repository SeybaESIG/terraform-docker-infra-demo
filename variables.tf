variable "network_name" {
  type        = string
  description = "Nom du réseau Docker à créer"
  default     = "terraform_app_network"
}

variable "container_name" {
  type        = string
  description = "Nom du conteneur Docker"
  default     = "terraform_nginx"
}

variable "image_name" {
  type        = string
  description = "Image Docker Nginx à utiliser"
  default     = "nginx:latest"
}

variable "external_port" {
  type        = number
  description = "Port externe exposé sur la machine hôte"
  default     = 8080
}

