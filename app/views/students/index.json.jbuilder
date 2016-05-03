json.array! @students.each do |student|
  json.id student.id 
  json.first_name student.first_name 
  json.last_name student.last_name
  json.email student.email
  json.phone_number student.phone_number
  json.short_bio student.short_bio
  json.linkedin_url student.linkedin_url
  json.twitter_handle student.twitter_handle
  json.blog student.blog
  json.resume_url student.resume_url
  json.github_url student.github.url
  json.photo student.photo
  json.experiences student.experiences.each do |experience|
    json.id experience.id
    json.job_title experience.job_title
    json.company_name experience.company_name
    json.start_date experience.start_date
    json.end_date experience.end_date
    json.details experience.details
  end
  json.educations student.educations.each do |education|
    json.id education.id
    json.degree education.degree
    json.university_name education.university_name
    json.start_date education.start_date
    json.end_date education.end_date
    json.details education.details
  end
  json.skills student.skills.each do |skill|
    json.id skill.id
    json.name skill.name
  end
end