locals {
  project    = "my-project" 
  env_web    = "web"
  env_db     = "db"
  
  vm_web_instance_name = "${local.project}-${local.env_web}"
  vm_db_instance_name  = "${local.project}-${local.env_db}"
}
