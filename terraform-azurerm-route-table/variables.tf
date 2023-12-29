variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
  default     = "SouthIndia"
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = null
}

variable "disable_bgp_route_propagation" {
  type        = string
  description = "Set route propergation on route table"
  default     = true
}
