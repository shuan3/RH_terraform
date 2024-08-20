variable "l1" {
  default = [1, 2, 3]
}

variable "l2" {
  default = [4, 5, 6]
}


variable "l3" {
  default = [7, 8, 9]
}


locals {

  new_list = [ for idx in range(0, 3):
            [ var.l1[idx], var.l2[idx], var.l3[idx] ]
        ]

}




resource "ddd" "ddd"{
  for_each = {for idx, val in local.new_list: idx => val}

  some_attribute1 = each.value[0]
  some_attribute2 = each.value[1]
  some_attribute3 = each.value[2]
}