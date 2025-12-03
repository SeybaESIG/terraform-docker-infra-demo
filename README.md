# **Infrastructure Déclarative avec Terraform**

## **Description**

Ce projet met en place une petite infrastructure déclarative à l'aide de Terraform.
L’objectif est de démontrer les bases de l’Infrastructure as Code (IaC) :

* définition de ressources Docker (réseau, image, conteneur)
* utilisation de variables et de fichiers `tfvars`
* génération d'outputs exploitables
* workflow complet : `init`, `plan`, `apply`, `destroy`

Le projet crée automatiquement un conteneur Nginx connecté à un réseau Docker dédié, avec un port externe configurable.

## **Structure du projet**

```
terraform-docker-infra/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
├── .gitignore
└── README.md
```

## **Fonctionnalités**

* Définition déclarative des ressources Docker (réseau, image, conteneur).
* Paramétrage via variables Terraform (`variables.tf`).
* Possibilité de personnaliser le déploiement via `terraform.tfvars`.
* Outputs utiles : nom du conteneur, image utilisée, URL d’accès.
* Déploiement et suppression de l’infrastructure en une seule commande.

## **Prérequis**

* Terraform
* Docker
* Docker Compose (optionnel)

## **Installation**

Clone du projet :

```bash
git clone https://github.com/SeybaESIG/terraform-docker-infra.git
cd terraform-docker-infra
```

Initialisation de Terraform :

```bash
terraform init
```

## **Personnalisation (optionnelle)**

Pour changer les valeurs par défaut, crée un fichier `terraform.tfvars` :

```hcl
network_name   = "custom_network"
container_name = "my_nginx_container"
image_name     = "nginx:alpine"
external_port  = 8081
```

## **Déploiement de l’infrastructure**

Afficher le plan :

```bash
terraform plan
```

Appliquer l’infrastructure :

```bash
terraform apply
```

Lors du déploiement, Terraform affichera les outputs, dont l’URL du service.

Par défaut, le site Nginx sera disponible sur :
**[http://localhost:8080](http://localhost:8080)**

## **Détruire l’infrastructure**

```bash
terraform destroy
```

## **Contenu des fichiers principaux**

### **main.tf**

Déclare le provider Docker, le réseau, l’image Nginx et le conteneur.

### **variables.tf**

Contient toutes les variables configurables : réseau, image, conteneur, port externe.

### **outputs.tf**

Expose des informations utiles après déploiement :

* nom du conteneur
* image utilisée
* URL d’accès

### **terraform.tfvars.example**

Exemple de personnalisation pour l’utilisateur.

## **Licence**

Libre d'utilisation pour toute expérimentation ou amélioration personnelle.
