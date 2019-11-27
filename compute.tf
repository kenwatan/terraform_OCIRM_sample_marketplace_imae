resource "oci_core_instance" "TF_Instance" {
        count = "1"
        compartment_id = "${var.compartment_ocid}"
        availability_domain = "${data.oci_identity_availability_domain.ad.name}" 
        display_name = "TF_Instance"
        shape = "${var.headnode_shape}"
        create_vnic_details {
                subnet_id = "${oci_core_subnet.TF_Public_Subnet.id}"
        }
      source_details {
        source_type = "image"
        source_id   = "${lookup(data.oci_core_app_catalog_subscriptions.test_app_catalog_subscriptions.app_catalog_subscriptions[0],"listing_resource_id")}"
      }
        metadata {
            ssh_authorized_keys = "${tls_private_key.key.public_key_openssh}"
        }
        
}
