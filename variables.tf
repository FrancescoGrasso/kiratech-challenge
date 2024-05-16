variable "kiratech_challenge_key_name"{
    type = string
    description = "nome keypair"
    default = "kiratech_challenge_key"
}

variable "kiratech_challenge_ami" {
    type = string
    description = "ami id per immagine ubuntu"
    default = "ami-0607a9783dd204cae"
}

variable "kiratech_challenge_instance_count"{
    type = number
    description = "numero di worker nodes nel cluster"
    default = 2
}

variable "kiratech_challenge_worker_instance_type" {
    type = string
    description = "il tipo di istanza dei nostri worker nodes"
    default = "t2.micro"
}