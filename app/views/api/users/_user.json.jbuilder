json.id user.id
json.location_id user.location_id
json.status user.status
json.admin user.admin
json.email user.email
json.password user.password
json.first_name user.first_name
json.last_name user.last_name
json.title user.title
json.bio user.bio
json.linkedin_url user.linkedin_url
json.github_url user.github_url
json.personal_website_url user.personal_website_url
json.picture_url user.picture_url

json.companies do
  json.array! user.companies, partial: 'api/companies/company', as: :company
end

json.educations do
  json.array! user.educations, partial: 'api/educations/education', as: :education
end

json.jobs do
  json.array! user.jobs, partial: 'api/jobs/job', as: :job
end

json.projects do
  json.array! user.projects, partial: 'api/projects/project', as: :project
end

json.skills do
  json.array! user.skills, partial: 'api/skills/skill', as: :skill
end
