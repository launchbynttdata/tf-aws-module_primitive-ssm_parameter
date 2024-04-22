// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

variable "parameter_name" {
  description = "Name of the parameter. If the name contains a path (any forward slashes), it must be fully qualified with a leading forward slash."
  type        = string

  validation {
    condition     = strcontains(var.parameter_name, "/") ? can(regex("^/.+", var.parameter_name)) : true
    error_message = "If the name contains a path (any forward slashes), it must be fully qualified with a leading forward slash."
  }
}

variable "type" {
  description = "Type of the parameter. Valid types are String, StringList, and SecureString."
  type        = string
  default     = "String"

  validation {
    condition = contains(["String", "StringList", "SecureString"], var.type)

    error_message = "Valid types are String, StringList, and SecureString."
  }
}

variable "description" {
  description = "Description of the parameter"
  type        = string
  default     = null
}

variable "value" {
  description = "Value of the parameter."
  type        = string
}

variable "tier" {
  description = "Parameter tier to assign. Valid tiers are `Standard` (default), `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier to `Standard` will recreate the resource."
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard", "Advanced", "Intelligent-Tiering"], var.tier)
    error_message = "Valid tiers are Standard, Advanced, and Intelligent-Tiering."
  }
}
