variable "region" {}
variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "oracleimagename" {
    default = "Oracle Cloud Developer Image"
}
variable "vcn_cidr" {
    default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
    default = "10.0.0.0/24"
}
variable "ad" {
    default = "1"
}
variable "headnode_shape" {
    default = "VM.Standard2.1"
}

