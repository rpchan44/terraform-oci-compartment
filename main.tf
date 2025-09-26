resource "null_resource" "compartment" {
  triggers = {
    name        = "compartments"
    description = "This is a simulated OCI compartment"
    ocid        = "ocid1.compartment.oc1.${substr(md5("compartment"), 0, 8)}"
  }

  provisioner "local-exec" {
    command = "echo Pretending to create compartment: ${self.triggers.name}"
  }
}
