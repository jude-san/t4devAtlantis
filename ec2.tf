# Create the EC2 Instance
resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  #   key_name      = var.key_name
  subnet_id = aws_subnet.this[0].id


  tags = merge({
    Name = "${var.name}-instance"
  }, var.tags)
}
