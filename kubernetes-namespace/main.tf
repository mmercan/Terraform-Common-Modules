resource "kubernetes_namespace" "aksnamespace" {
  metadata {
    name = var.namespace_name
    
    labels = {

      application      = replace(var.tag_application, "/([^A-Za-z0-9,.])/", "_") 
      environment      = replace(var.tag_environment, "/([^A-Za-z0-9,.])/", "_")
      technicalcontact = replace(var.tag_tech_contact, "@", "-at-") 
      
      istio-injection     = "enabled"
      rbac-mgr-developers = var.namespace_rbac-mgr-developers
    }
  }
}