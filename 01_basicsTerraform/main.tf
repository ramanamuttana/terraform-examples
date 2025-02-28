# simple file resource
resource "local_file" "tf_example1" {
  filename = "${path.module}/example-${count.index}.txt"
  content  = "ramana is a good instructor!"
  count = 3
}
