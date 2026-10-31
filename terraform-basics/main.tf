resource "terraform_data" "first_resource" {
  input = "Learning Terraform is fun!!!"
}
output "message" {
  value = terraform_data.first_resource.output
}