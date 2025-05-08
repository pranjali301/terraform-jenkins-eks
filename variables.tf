variable "vpc_cidr" {
  description = "values for the vpc CIDR block"
  type        = string

}

variable "public_subnets" {
  description = "values for the public subnet CIDR"
  type        = list(string)
}

variable "instance_type"{
    description = "values of instance"
    type = string
}