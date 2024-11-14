resource "github_repository" "frontend_repo" {
  name        = "sd-frontend-terraform"
  description = "Frontend repository"
  auto_init   = true
  visibility  = "private"
}

resource "github_repository" "backend_repo" {
  name        = "sd-backend-terraform"
  description = "Backend repository"
  auto_init   = true
  visibility  = "private"
}

resource "github_team" "dev_team" {
  name        = "SD Tech Developers"
  description = "Development team with access to frontend and backend repositories"
}

resource "github_team_repository" "frontend_access" {
  team_id    = github_team.dev_team.id
  repository = github_repository.frontend_repo.name
  permission = "push"
}

resource "github_team_repository" "backend_access" {
  team_id    = github_team.dev_team.id
  repository = github_repository.backend_repo.name
  permission = "push"
}

resource "github_team_membership" "team_members" {
  for_each    = toset(var.devs)
  team_id     = github_team.dev_team.id
  username    = each.key
  role        = "member"
}
