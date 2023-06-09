provider "aws" {}


# Creating Web Traffic Security Group
resource "aws_security_group" "web_traffic" {
    
  name        = "zomato-webserver"
  description = "allows http & https traffic"
 
  ingress {

    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  
  ingress {

    from_port        = 443
    to_port          = 444
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


    
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    "Name" = "zomato-webserver",
    "Project" = "zomato",
    "Env"     = "dev"
  }
}
