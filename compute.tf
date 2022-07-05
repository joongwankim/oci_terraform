

resource "oci_core_instance" "ubuntu_instance" {
    # Required
    availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
    compartment_id = oci_identity_compartment.tf-compartment.id
    shape = "VM.Standard.E2.1.Micro"
    source_details {
        source_id = "ocid1.image.oc1.ap-seoul-1.aaaaaaaaksje2yhvklu4f6oxo6idwk4ivi3xotxqcgfnsebcfsg6umcpn3sq"
        source_type = "image"
    }

    # Optional
    display_name = "wordpress01"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.vcn-public-subnet.id
    }
    preserve_boot_volume = false
}
