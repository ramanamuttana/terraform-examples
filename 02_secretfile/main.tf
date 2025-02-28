# simple file resource
resource "local_file" "tf_example1" {
  filename = "${path.module}/example-${count.index}.txt"
  content  = "ramana is a good instructor!"
  count = 1
}
resource "local_sensitive_file" "tf_example2" {
  filename = "${path.module}/example-sensitive.txt"
  content  = "ram is a good instructor!"
}
