output "HeadNodePublicIP" {
  value = "${oci_core_instance.TF_Instance.public_ip}"
}
output "Private_key" {
  value = "${tls_private_key.key.private_key_pem}"
}