data "aws_ami" "app_ami2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-*"]
  }

  owners = ["137112412989"] # Amazon
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami2.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
