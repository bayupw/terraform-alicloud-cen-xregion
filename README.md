# Terraform module to create Alibaba Cloud CEN Cross-Region VPC Attachment

_Thanks for Przemek https://sky-with-many-clouds.com/ for sharing the TF code https://github.com/conip/CEN-backbone_

## Usage 

```hcl
module "cen-xregion" {
  source = "bayupw/cen-xregion/alicloud"
  
  name = "cen"
  description = "CEN instance"
  
  cen_attachments = {
    region1 = {
      vpc_id          = "vpc-a1b2c3d4"
      region_id       = "cn-beijing"
      attachment_type = "VPC"
    }
    region2 = {
      vpc_id          = "vpc-e5f6g7h8"
      region_id       = "ap-southeast-1"
      attachment_type = "VPC"
    }
  }
}
```

## Contributing

Report issues/questions/feature requests on in the [issues](https://github.com/bayupw/terraform-alicloud-cen-xregion/issues/new) section.

## License

Apache 2 Licensed. See [LICENSE](https://github.com/bayupw/terraform-alicloud-cen-xregion/tree/master/LICENSE) for full details.