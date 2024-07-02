variable "movies_name" {
  type =list(object({
    name    = string
    comment = string
  }))
  default =[{ 
    "Villu"        = "Action"
    "KGF"    = "Action and Mother sentiment"
    "Remo"   = "romantic"
  }]
}  
   
resource "null_resource" "write_movie_names" {
  provisioner "local-exec" {
    command = <<-EOT
      echo "${join("\n", [for movie, comment in var.movies_name : 
"${movie}: ${$
    EOT
  }
}  
