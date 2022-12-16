## Tutorial: 
> Create a load balancer with an availability set in the backend pool using the Terraform.

> This Terraform task creates a load balancer and availability set.

## In this task we have : 
> A Resource Group, Storage Account, virtual machines in an availability set, load balancer with 80 (HTTP) and 443 (HTTPS) rules, Virtual Network, 3 Subnets, 2 data disks, 2 os disks, a Public IP.

## variable :

           variable "arm_region" 
           description = "The Azure region to create things in."

           variable "arm_vm_admin_password" 
           description = "Passwords for the root user in VMs."

           variable "arm_frontend_instances" 
           description = "Number of front instances"
  

## First of all in this Task we will be creating and configuring the resources below : 

> Resource group name is "oguzhanRG" in the "West US" location.

> Storage account name is "oaydoganstorageacc" in the Resource group we just created.

> Virtual network name is "tf-vnet" 

> Subnet names are "frontend", "backend" and "dmz"  

> Virtual Machines in availability set name is "tf-avail-set". 

## Second of all in this Task we will be creating and configuring the resources below :

> Load Balancer name is "tf-lb"

                              Rule 1 :                 resource "azurerm_lb_probe" "port80" {
                                                       name                    = "tf-lb-rule-80"
                                                       protocol                       = "Tcp"
                                                       frontend_port                  = 80
                                                       backend_port                   = 80
                                                       frontend_ip_configuration_name = "default"

                              Rule 2 :                 resource "azurerm_lb_rule" "port443" {
                                                       name                    = "tf-lb-rule-443"
                                                       protocol                       = "Tcp"
                                                       frontend_port                  = 443
                                                       backend_port                   = 443
                                                       frontend_ip_configuration_name = "default"
> Health probe for HTTP

> Health proble for HTTPS

> Public IP name is "tf-public-ip", allocation_method set as = "Static"

> Backend pool for availability set.

## Third of all in this Task we will be creating and configuring the resources below :

                             Outputs :
                                                        output "frontend_id" 
                                                        output "backend_id" 
                                                        output "dmz_id" 
                                                        output "load_balancer_ip"
 
> Allow me to export structured data about my resources.

## Finally in this Task we will be creating and configuring the resources below :

> We will keep our tfstate file in the container, named "oaydogancontainer"

