terraform {
  required_providers {
    ## ...
    aws = {
      version = "~> 5.53.0"
      # region  = "eu-north-1"
      # profile = tech4dev
    }
    random = {
      version = "~> 3.6.2"
    }
  }

  # required_version = "~> 1.10.5"
}


## specifying provider configurations
provider "aws" {
  region = "eu-north-1"
  # profile = tech4dev

}


### template
# terraform {
#   required_providers {
#     aws = {
#       version = "~> 5.52.0"
#     }
#     random = {
#       version = "~> 3.6.2"
#     }
#   }

#   required_version = "~> 1.1.9"
