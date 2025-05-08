variable "vpc_cidr" {
  description = "values for the vpc CIDR block"
  type        = string

}

variable "public_subnets" {
  description = "values for the public subnet CIDR"
  type        = list(string)
}

variable "private_subnets" {
    description = "values of private subnet CIDR"
    type       = list(string)   

} 