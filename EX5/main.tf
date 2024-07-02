variable "movies_name" {
  type = list(object({
    name    = string
    comment = string
  }))

  default = [
    { name = "Villu", comment = "Action" },
    { name = "KGF", comment = "Action" },
    { name = "Remo", comment = "Romance" }
  ]
}

resource "null_resource" "write_movie_names" {
  provisioner "local-exec" {
    command = "echo '${join("\n", [for movie in var.movies_name : "${movie.name}: ${movie.comment}"])}' > ${path.module}/Movies.txt"
  }
  triggers = {
	"key" = sha256(join(",", [for movie in var.movies_name : "${movie.name}:${movie.comment}"]))
  }
}

output "file_created" {
  value = "Fichier Movies.txt créé"
}

