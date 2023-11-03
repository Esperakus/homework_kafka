variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "cloud_id" {
  type    = string
  default = ""
}

variable "folder_id" {
  type    = string
  default = ""
}

variable "image_id" {
  type = string
  default = "fd8cqkckt1d3et5smv09" # alma 8
}

variable "image_deb" {
  type = string
  default = "fd80bm0rh4rkepi5ksdi" # ubuntu 22.04
}

variable "yc_token" {
  type    = string
  default = ""
}
