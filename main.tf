terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }
}

resource "docker_image" "build_image" {
  name = "rowusu/my-app-richard:1.0"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}








resource "local_file" "testterraform" {
  filename = var.filename
  content  = "My name is ${var.name} ... ${var.message} \n ${data.local_file.datafile.content}"
}

data "local_file" "datafile" {
  filename = "terradata.txt"
}