# Terraform-Common-Modules


## Mono Repo vs Poli Repo
- advantages to have individual repos for each resource type vs 
- advantages to have a single repo with individual folders for each resrouce type


## Public vs Private Repo

- for private git auth is required but specific defaults for variables can be added


## When should use original terraform and When should we use the git repo

- ability to add standardisation over the resources, adding defaults to variables or combining multiple resources.
vs updading the got repo when terraform resource updates 
- for centralised approach creating git repos and resources and using them, and when updading them with tags etc.. when we have better way of using them VS
- non centralised approach as using the terraform modules as is then when we have patterns and use cases moving them to git repos and customizing them.