terraform {
  required_providers {
    tencentcloud = {
      source  = "tencentcloudstack/tencentcloud"
      version = "1.72.5"
    }
  }
}

provider "tencentcloud" {
  region = "ap-shanghai"
}

resource "tencentcloud_vpc" "vpc-test" {
  cidr_block = "10.0.0.0/16"
  name = "vpc-demo"
}

output "test" {
  value = "terraform demo"
}
