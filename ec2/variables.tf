# Variables with default values
variable "instance_name" {
  description = "The name tag for the EC2 instance"
  type        = string
  default     = "my-instance"  # Replace with your desired instance name
}

variable "sg_name" {
  description = "The name of the security group"
  type        = string
  default     = "my-security-group"  # Replace with your desired security group name
}

variable "sg_description" {
  description = "Description for the security group"
  type        = string
  default     = "Security group for instance"  # Replace with your desired default description
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
  default     = "vpc-08df10d61492fed8c"  # Replace with your VPC ID
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-08a0d1e16fc3f61ea"  # Replace with your desired AMI ID
}

variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
  default     = "t2.micro"  # Replace with your desired instance type
}

variable "key_name" {
  description = "The key pair name for the EC2 instance"
  type        = string
  default     = "my-keypair"  # Replace with your key pair name
}

variable "ingress_ports" {
  description = "A list of maps defining ingress ports, protocols, and CIDR blocks"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "egress_ports" {
  description = "A list of maps defining egress ports, protocols, and CIDR blocks"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
]
}
