https://developer.hashicorp.com/terraform/language/functions


max(5, 12, 9)
join(",",["test","a"])
lookup({a="test",b="t"},"a","default")
fileexists("${path.module}/file.txt")
tomap({"a"=1,"b"=2})

value= "${substr(var.substring,5,2)}"