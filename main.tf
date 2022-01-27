variable "variable1"{}

variable "variable2"{}

resource "null_resource" "null1" {
  triggers = {
    string = "${var.variable1}"
  }
}

resource "null_resource" "null2" {
  triggers = {
    string = "${var.variable2}"
  }
}

output "output-varable1" {
  value = "${null_resource.null1.triggers}"
}

output "output-varable2" {
  value = "${null_resource.null2.triggers}"
}
