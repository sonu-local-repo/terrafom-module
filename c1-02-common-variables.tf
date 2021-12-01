variable "region" {
    type = string
    default = "us-east-1"
}

variable "common-tags" {

    default = {
        "Name" = "Terraform module"
        "env" = "dev"
    }
}