variable "movie_name" {
  type    = string
  default = "KGF"
}

resource "null_resource" "writing_movie_name" {
  provisioner "local-exec" {
    command = "echo ${var.movie_name} > ${path.module}/film.txt"
  }
}

output "file_created_message" {
  value = "Fichier film.txt créé"
}

