# Devops tools for Continuous integration

This project is about setting up a continuous integration tools. The tools to be configured on the AWS Ec2 instance are Git, Jenkins, Nexus and SonarQube.

## Setup

`terraform init`

## Provision

`terraform apply --auto-approve`

## Access Jenkins

- Once provisioned, navigate to the external IP address of the provisioned EC2 instance to access Jenkins by using this link:

`http://[AWS_EC2_INSTANCE_EXTERNAL_IP]:8080`

- As prompted, enter the password found in /var/lib/jenkins/secrets/initialAdminPassword;

- Use this command to display the password:

  `sudo cat /var/lib/jenkins/secrets/initialAdminPassword`

## Access Nexus

- Once provisioned, navigate to the external IP address of the provisioned EC2 instance to access Nexus by using this link:

`http://[AWS_EC2_INSTANCE_EXTERNAL_IP]:8081`

- After accessing the Nexus for the very first time you will need to input the generated password for admin user before going through the first setup wizard.

`/home/ec2-user/nexus/sonatype-work/nexus3/admin.password`

## Access SonarQube

- Once provisioned, navigate to the external IP address of the provisioned EC2 instance to access SonarQube by using this link:

`http://[AWS_EC2_INSTANCE_EXTERNAL_IP]:9000`

- Once the instance is up and running, log in using System Adminstrator credentials:

login: admin

password: admin

- After this you will prompted to enter your own password.
