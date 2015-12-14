# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# First User
vg = User.create(email: 'vg@cv_sync.cv', password: 'qwerty')
puts vg.errors.inspect

cv = vg.curriculum_vitaes.build

cv.achievements.build
cv.certifications.build
ericsson = cv.companies.build(name_or_title: 'Ericsson', location: 'Estonia', industry_or_market: Company::INDUSTRY_OR_MARKETS[1])
cashongo = cv.companies.build(name_or_title: 'CashOnGo Ltd', location: 'Estonia', industry_or_market: Company::INDUSTRY_OR_MARKETS[1])
benuevo = cv.companies.build(name_or_title: 'BENUEVO GROUP LLC', location: 'Estonia', industry_or_market: Company::INDUSTRY_OR_MARKETS[1])

cv.contacts.build(name_or_title: 'email', contact_url: 'vg@cv_sync.cv', contact_type: 1)
cv.contacts.build(name_or_title: 'twitter', contact_url: '@gedrovits', contact_type: 2)

cv.educations.build

cv.experiences.build(company: ericsson, occupation: 'SMA Operator', description: 'tired as shit', 
                     start_date: 5.years.ago, end_date: 4.years.ago, ongoing_or_in_progress: false,
                     experience_type: Experience::EXPERIENCE_TYPES.first)
cv.experiences.build(company: cashongo, occupation: 'PHP Developer', description: 'programmer nigga',
                     start_date: 4.years.ago, end_date: 2.years.ago, ongoing_or_in_progress: false,
                     experience_type: Experience::EXPERIENCE_TYPES.first)
cv.experiences.build(company: benuevo, occupation: 'Ruby Developer', description: 'still programmer nigga',
                     start_date: 2.years.ago, end_date: nil, ongoing_or_in_progress: true,
                     experience_type: Experience::EXPERIENCE_TYPES.first)

cv.languages.build(name: 'Russian', code: 'ru', proficiency: Language::LEVEL_OR_PROFICIENCIES.last)
cv.languages.build(name: 'Estonian', code: 'et', proficiency: Language::LEVEL_OR_PROFICIENCIES.third)
cv.languages.build(name: 'English', code: 'en', proficiency: Language::LEVEL_OR_PROFICIENCIES.fourth)

cv.patents.build

cv.people.build(full_name: 'Vjatseslav Gedrovits')
cv.people.build(full_name: 'Kristjan Novitski')
cv.people.build(full_name: 'Juri Kern')
cv.people.build(full_name: 'Oleg Shurogin')
cv.people.build(full_name: 'Michael McGrath')
cv.people.build(full_name: 'Brian Morrow')

cv.projects.build(name_or_title: 'Peachy.co.uk', occupation: 'Software Developer', start_date: 3.years.ago, end_date: 2.years.ago, 
                  project_url: "http://peachy.co.uk", description: 'loan sharks')
cv.projects.build(name_or_title: 'StateVet', occupation: 'Software Developer', start_date: 2.years.ago, end_date: nil, 
                  project_url: "http://www.statevet.com", description: 'SV')
cv.projects.build(name_or_title: 'CoreOne', occupation: 'Software Developer', start_date: 2.years.ago, end_date: nil,
                  project_url: "http://www.tracefirst.com", description: 'CO')
cv.projects.build(name_or_title: 'InterstateMovement', occupation: 'Software Developer', start_date: 2.years.ago, end_date: nil,
                  project_url: "http://www.interstatemovement.com", description: '')
cv.projects.build(name_or_title: 'MoneyZen', occupation: 'Software Developer', start_date: 2.years.ago, end_date: nil,
                  project_url: "http://www.moneyzen.eu", description: '')

cv.publications.build
cv.recommendations.build

cv.skills.build(name_or_title: 'PHP', category: 1, proficiency: 3)
cv.skills.build(name_or_title: 'PHP Symfony 1.2', category: 1, proficiency: 3)
cv.skills.build(name_or_title: 'Ruby', category: 1, proficiency: 5)
cv.skills.build(name_or_title: 'Rails', category: 1, proficiency: 5)
cv.skills.build(name_or_title: 'PostgreSQL', category: 1, proficiency: 4)
cv.skills.build(name_or_title: 'MySQL', category: 1, proficiency: 4)
cv.skills.build(name_or_title: 'OracleSQL', category: 1, proficiency: 3)
cv.skills.build(name_or_title: 'JavaScript', category: 1, proficiency: 4)

cv.tasks.build(name_or_title: 'Task 1')
cv.tasks.build(name_or_title: 'Task 2')
cv.tasks.build(name_or_title: 'Task 3')
cv.tasks.build(name_or_title: 'Task 4')
cv.tasks.build(name_or_title: 'Task 5')

cv.tools.build(name_or_title: 'SMA Machine', category: 1, level_or_experience: Tool::LEVEL_OR_PROFICIENCIES.first)
cv.tools.build(name_or_title: 'RubyMine', category: 1, level_or_experience: Tool::LEVEL_OR_PROFICIENCIES.last)

cv.save # Save all references...

