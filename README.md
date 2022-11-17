##  Creating an environment in AWS With Terraform

**Note** : The project uses paid resources

* [General info](#general-info)
* [Environment](#environment)
* [Setup](#setup)

## General info
A simple project in terraform that creates a safe work environment.
	
## Environment

I created a vpc

which has 4 subnet    2 of them are private     2 of them are public

and I put them in 2 availability zone

Each availability zone contains 2 subnet 1 privet 1 public

And for all subnets that are public we created a routing table with internet gateway that they will have access to the world

And for the subnets that are privet we created a routing table with net gateway associated with him Elastic IP address 

And with this we go to the routing table of public subnet And from there out into the world
   

	
## Setup

#### Prerequisites :
* terraform
* aws cli

#### To run this project :

```
$ git clone https://github.com/aliya-ovad/Creating-an-environment-in-AWS-With-Terraform.git
$ cd Creating-an-environment-in-AWS-With-Terraform
$ terraform init
$ terraform apply
```
#### to destroy the project :

```
$ terraform destroy
```
