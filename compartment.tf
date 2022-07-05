resource "oci_identity_compartment" "tf-compartment" {
    # Required
    compartment_id = "ocid1.tenancy.oc1..aaaaaaaarhtkiptln32mcscuof36jv27eyqg3ul47upfv4unzwfdqxdov7ia"
    description = "Compartment for Terraform resources."
    name = "tf-sjsys-infrastructure"
}
