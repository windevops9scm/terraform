variable "sample" {
  default = "this section deals with variables"
}
output "sample" {
  value = var.sample
}

variable "sample2" {

}
output "sample2" {
  value = var.sample2
}
variable "string" {
  default = "hello"
}

variable "number" {
  default = 10
}
variable "boolean" {
  default = false
}

output "string" {
  value = var.string
}

output "number" {
  value = var.number
}

output "boolean" {
  value = var.boolean
}
variable "trainings" {
  default = ["Devops", "AWS"]
}
output "training" {
  value = var.trainings
}
output "second_training" {
  value =var.trainings[1]
}

variable "Fruits" {}
output "Fruits" {
  value = var.Fruits
}

variable "Country" {}
output "Country" {
  value = var.Country
}

variable "Season" {}

output "Season" {
  value = var.Season
}