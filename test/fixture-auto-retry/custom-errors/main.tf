resource "null_resource" "tf_retryable_error" {
  provisioner "local-exec" {
    // The command will fail with a custom retryable error that matches the config
    command = "echo 'My own little error' && exit 1"
    interpreter = ["/bin/bash", "-c"]
  }
}

variable "some_var" {
  description = "Just to get some output"
  default = "Some value"
}

output "test" {
  value = var.some_var
}
