### Terraform


Basic resource definitions

```
resource "aws_instance" "helloworld" {
  ami           = "ami-09dd2e08d601bff67"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
```


```
resource "local_file" "literature" {
    filename = "art_of_war.txt"
    content     = <<-EOT
      Sun Tzu said: The art of war is of vital importance to the State.

      It is a matter of life and death, a road either to safety or to 
      ruin. Hence it is a subject of inquiry which can on no account be
      neglected.
    EOT
}
```


```

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

```

```
data "aws_eks_cluster" "default" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "default" {
  name = module.eks.cluster_id
}

```


### variables

```
variable "words" {
  description = "A word pool to use for Mad Libs"
  type = object({
    nouns      = list(string),
    adjectives = list(string),
    verbs      = list(string),
    adverbs    = list(string),
    numbers    = list(number),
  })
}


```

### outputs

```

```


### locals

```

```

### functions

```

```


### conditionals
```

```

### modules
```


module "autoscaling" {
  source      = "./modules/autoscaling" #A
  namespace   = var.namespace #B
    ssh_keypair = var.ssh_keypair #A

  vpc       = module.networking.vpc #A
  sg        = module.networking.sg #A
  db_config = module.database.db_config #A

}

module "database" {
  source    = "./modules/database" #A
  namespace = var.namespace #B

    vpc = module.networking.vpc #A
  sg  = module.networking.sg #A

}

module "networking" {
  source    = "./modules/networking" #A
  namespace = var.namespace #B
}




```





