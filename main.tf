resource "aws_instance" "nexus_instance" {
    ami                         = "ami-0089b31e09ac3fffc" # Amaxon Linux 2 AMI from eu-west-2 region
    count                       = 1
    instance_type               = "t3.medium"
    key_name                    = "londonkeypair"
    associate_public_ip_address = true
    subnet_id              = aws_default_subnet.default_az1.id
    vpc_security_group_ids      = [aws_security_group.ec2_security_group.id] 
    user_data                   = "${file("devopstools.sh")}"

    tags = {
        Name            = "Nexus-Instance"
        ProvisionedBy   = "Terraform"
    }
}