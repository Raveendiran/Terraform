variable "movies_name" {
  type = map(string)
  default = {
    "Villu"        = "Action"
    "KGF"    = "Action and Mother sentiment"
    "Remo"   = "romantic"
  }
}

resource "null_resource" "write_movie_names" {
  provisioner "local-exec" {
    command = <<-EOT
      echo "${join("\n", [for movie, comment in var.movies_name : "${movie}: ${comment}"]) }" > ${path.module}/Movies.txt
    EOT
  }
}

output "file_created" {
  value = "Fichier Movies.txt créé"
}

