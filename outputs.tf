output "container_name" {
  description = "Nom du conteneur déployé"
  value       = docker_container.web.name
}

output "container_image" {
  description = "Image utilisée par le conteneur"
  value       = docker_image.nginx.name
}

output "url" {
  description = "URL d'accès à l'application"
  value       = "http://localhost:${var.external_port}"
}

