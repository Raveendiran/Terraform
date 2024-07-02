variable "film_prefere" {
  type    = string
  default = "Villu"
}

resource "null_resource" "favorite_movie" {
  provisioner "local-exec" {
    command = "echo ${var.film_prefere} > ${path.module}/favorite_movie.txt"
  }
}

