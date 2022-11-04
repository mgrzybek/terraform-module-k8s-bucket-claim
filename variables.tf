variable "namespace" {
  type        = string
  description = "The namespace used to install the bucket's config et secrets"
}

variable "name" {
  type        = string
  description = "The bucket’s name"
}

variable "storageClass" {
  type         = string
  description  = "Storage class to use in the ObjectBucketClaim"
}
