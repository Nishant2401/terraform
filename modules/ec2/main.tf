resource "aws_instance" "this" {
  for_each = var.instances

  ami           = each.value.ami_id
  instance_type = each.value.instance_type
  key_name      = each.value.key_name

  root_block_device {
    volume_type = each.value.root_volume_type
    volume_size = each.value.root_volume_size
  }

  tags = {
    Name        = each.key
    Environment = each.value.environment
    Owner       = each.value.owner
  }

  lifecycle {
    prevent_destroy = each.key == "web-critical" ? true : false
  }
}