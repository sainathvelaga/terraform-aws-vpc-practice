#### Project ####
variable "project_name"{
    type = string
}

variable "environment"{
    type = string
    default = "dev"
}

variable "common_tags"{
    type = map
}



variable "vpc_cidr"{
    default = "10.0.0.0/16"
}

variable "vpc_tags"{
    type = map
    default = {}
}

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}


variable "public_subnet_cidr_tags" {
    type = map
    default = {}
}

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "private_subnet_cidr_tags" {
    type = map
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2
        error_message = "Please provide 2 valid public subnet CIDR"
    }
}

variable "enable_dns_hostnames" {
    type = bool
    default = true
}

variable "database_subnet_cidr_tags" {
    type = map
    default = {}
}

variable "database_subnet_group_tags" {
    type = map
    default = {}
}

#### Public Route table ####
variable "public_route_table_tags" {
    type = map
    default = {}
}

#### Private Route table ####
variable "private_route_table_tags" {
    type = map
    default = {}
}

#### Database Route table ####
variable "database_route_table_tags" {
    type = map
    default = {}
}

variable "nat_gateway_tags" {
    type = map
    default = {}
}