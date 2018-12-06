provider "null" {}

resource "null_resource" "georgiman"{
  count = 3
  triggers {
  build_number = "georgiman${count.index}"
  }
  provisioner "local-exec" {
    command = "echo hello georgiman${count.index}"
  }
}

