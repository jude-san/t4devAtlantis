variable "name" {
  description = "value"
  type        = string
  default     = "jude"
}

variable "tags" {
  description = "value"
  type        = map(string)
  default = {
    "env" = "dev"
  }
}

variable "vpc_cidr" {
  description = "value"
  type        = string
  default     = "10.9.0.0/16"
}


variable "subnet_cidr" {
  description = "value"
  type        = string
  default     = "10.9.1.0/24"

}

variable "availability_zone" {
  description = "value"
  type        = list(string)
  default     = ["eu-north-1a", "eu-north-1b"]

}

variable "public_ip" {
  description = "Whether to assign a public IP to instances in this subnet"
  type        = bool
  default     = false
}


### ec2 instance variable

variable "instance_count" {
  description = "Number of instances to provision."
  type        = number
  default     = 5
}

## only in eu-north-1 region specify diffrent ami for separate region
variable "ami" {
  description = "ami id ec2 instance based on region"
  type        = string
  default     = "ami-0d266d33ca564bca7"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "lambda_zip_file" {
  description = "lambda file"
  type        = string
  default     = "/dir/<file-name>"
}

# IAM Variables
# variable "assume_role_policy" {
#   description = "IAM assume role policy document"
#   type        = string
# }

# variable "policy_arn" {
#   description = "Policy ARN to attach to the IAM role"
#   type        = string
# }
