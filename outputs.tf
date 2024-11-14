output "frontend_repo_url" {
  description = "URL of the frontend repository"
  value       = github_repository.frontend_repo.html_url
}

output "backend_repo_url" {
  description = "URL of the backend repository"
  value       = github_repository.backend_repo.html_url
}

output "dev_team_id" {
  description = "ID of the Developers team"
  value       = github_team.dev_team.id
}

output "dev_team_name" {
  description = "Name of the Developers team"
  value       = github_team.dev_team.name
}

output "developers_list" {
  description = "List of developers added to the team"
  value       = var.devs
}
