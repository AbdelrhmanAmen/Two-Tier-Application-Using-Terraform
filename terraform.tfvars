region = "eu-west-3"
author = "abdelrhman"

#network values

vpc = "vpc-08530e240166a34b1"

#app values

type = "t2.micro"
image = "ami-06b6c7fea532f597e"

# data values
storage=20
skip_snapshot=true
instance_class="db.t2.micro"
engine="MariaDB"
engine_version="10.6"
username="admin"
password="admin-rds"