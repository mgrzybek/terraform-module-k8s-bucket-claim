# terraform-module-k8s-bucket-claim

S3 bucket claim using ObjectBucketClaim object

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_manifest.bucket](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest) | resource |
| [kubernetes_config_map.configmap](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/config_map) | data source |
| [kubernetes_secret.secret](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The bucket’s name | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace used to install the bucket's config et secrets | `string` | n/a | yes |
| <a name="input_storageClass"></a> [storageClass](#input\_storageClass) | Storage class to use in the ObjectBucketClaim | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_AWS_ACCESS_KEY_ID"></a> [AWS\_ACCESS\_KEY\_ID](#output\_AWS\_ACCESS\_KEY\_ID) | n/a |
| <a name="output_AWS_SECRET_ACCESS_KEY"></a> [AWS\_SECRET\_ACCESS\_KEY](#output\_AWS\_SECRET\_ACCESS\_KEY) | n/a |
| <a name="output_BUCKET_HOST"></a> [BUCKET\_HOST](#output\_BUCKET\_HOST) | n/a |
| <a name="output_BUCKET_REGION"></a> [BUCKET\_REGION](#output\_BUCKET\_REGION) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->