resource "null_resource" "name" {
depends_on = [ module.public_instance ]
    connection {
    type     = "ssh"
    host     = aws_eip.bastion_host.public_ip
    user     = "ec2-user"
    private_key = "jenkins.pem"

}

provisioner "file" {
  
  source = "jenkins.pem"
  destination = "/tmp/jenkins.pem"
}

provisioner "remote-exec" {
  
    inline = [ "sudo chmod 400 /tmp/jenkins.pem" ]

}


provisioner "local-exec" {
  
    command = "echo time of vpc creation `date` and vpc_id: ${module.vpc.vpc_id}  >> creation-time-vpc-id.txt "
    working_dir = "local_exec/"
    on_failure = continue
}

/*
provisioner "local-exec" {
  
    command = "echo time of vpc destruction `date` and vpc_id: ${module.vpc.vpc_id}  >> destroy-time-vpc-id.txt "
    working_dir = "local_exec/"
    when = destroy
    # on_failure = continue
}
*/

}