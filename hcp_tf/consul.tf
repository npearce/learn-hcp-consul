resource "hcp_hvn" "example" {
  hvn_id         = var.hvn_id
  cloud_provider = var.cloud_provider
  region         = var.region
}
resource "hcp_consul_cluster" "example" {
  hvn_id          = hcp_hvn.example.hvn_id
  cluster_id      = var.cluster_id
  cloud_provider  = var.cloud_provider
  region          = var.region
  public_endpoint = true
}
