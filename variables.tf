variable "region" {
  type        = string
  description = "The AWS region where the resources will be deployed"
}

variable "environment" {
  type        = string
  description = "The environment in which the resources will be provisioned"
}

variable "project_name" {
  type        = string
  description = "Name of project"
}

variable "vpc_id" {
  type        = string
  description = "The ID of vpc"
}

variable "subnet_id" {
  type        = string
  description = "The ID of subnet"
}

variable "public_key" {
  type        = string
  description = "Public key ssh"
}
