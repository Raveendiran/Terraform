variable "movies_name" {
  type = list(object({
    name    = string
    comment = string
  }))
  default = [
    { name = "Villu", comment = "Action" },
    { name = "KGF", comment = "Action" },
    { name = "Remo", comment = "Romantic" }
  ]
}

resource "null_resource" "write_movie_names" {
  provisioner "local-exec" {
    command = <<-EOT
      echo "${join("\n", [for movie in var.movies_name : "${movie.name}: ${movie.comment}"]) }" > ${path.module}/Movies.txt
    EOT
  }
}

output "file_created" {
  value = "Fichier Movies.txt créé"
}

