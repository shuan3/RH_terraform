variable "map"{
    type=map
    default={
        "one"=1,
        "two"=2
    }
}
output "lookup_output"{
    value=${lookup(var.map,"two")}
}