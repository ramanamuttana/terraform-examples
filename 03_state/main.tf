resource "local_sensitive_file" "example1" {
  content  = "venkata!"
  filename = "${path.module}/output/sensitive.txt"
}
