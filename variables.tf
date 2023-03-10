#variables.tf of Terraform

variable "project" {
  type    = string
  default = "zomato"
}
variable "environment" {
  type    = string
  default = "prod"
}

variable "region" {
  default = "ap-south-1"
}
/*=== This structure is replicating the Key structure of the JSON file to assign values from it.==*/
variable "builds" {
  type = list(
    object(
      {
        name            = string,
        builder_type    = string,
        build_time      = number,
        files           = list(object({ name = string, size = number })),
        artifact_id     = string,
        packer_run_uuid = string
      }
    )
  )
  description = "List of images, as generated by Packer's 'Manifest' post-processor."
}
variable "last_run_uuid" {
  type = string
}
