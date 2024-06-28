variable "name" {
    description = "The is the name of our company"
    type = string
    default = "Corp"
  
}


variable "pub-key" {
    description = "This is my public ssh key"
    type = string
    default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID7gOlK6EeYhBUCrvmTr0mGNaX5w/I86ws8x7yY+cELu lovethoballe@loveths-MBP.attlocal.net"
    sensitive = true
  
}


variable "port-numbers" {
    description = "These are my ports to open"
    type = map(number)
    default = {
      "http" = 80
      "ssh" = 22
      "liferay" = 8080
      "postgres" = 5432
    }
  
}

variable "image" {
    description = "The machine image to be used"
    type = string
    default = "ami-0eaf7c3456e7b5b68"
  
}

variable "instance-type" {
    description = "The size of the vm"
    type = string
    default = "t3.medium"
  
}