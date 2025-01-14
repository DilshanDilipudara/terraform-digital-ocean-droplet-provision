terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}


# cloud provider name
provider "digitalocean" {
    token = var.TOKEN # PAT
}

# resource type and terraform uniqly identifier name
resource "digitalocean_droplet" "droplet" {
    name = "test-droplet"  # specifies the name of the droplet
    image = "ubuntu-20-04-x64" # The base operating system image for the droplet
    region = "nyc3"
    size = "s-1vcpu-1gb"
}