
skills = ["Agriculture", "Forestry", "TESL/TEFL", "Spanish Language", "French Language", "Teaching", "Bachelor's Degree", "Accounting", "Computer Software"]

interests = ["Education", "Health", "Youth & Community Development", "Business Development", "Agriculture", "Environment"]

categories = ["Education", "Health & HIV/AIDS", "Youth & Community Development", "Business and Information & Communication Technology", "Agriculture", "Environment"]

countries = ["Dominica", "Belize", "Costa Rica", "Panama", "Jordan", "Morocco", "Botswana", "Burkina Faso", "Ghana", "Guinea"]

namespace :seed do

	desc "Generate all the default data"
	task :all => :environment do
		skills.each do |skill|
			Skill.create({:name => skill})
		end

		interests.each do |interest|
			Interest.create({:name => interest})
		end

		categories.each do |category|
			Category.create({:name => category})
		end
	end

	desc "Reset all data"
	task :reset => :environment do
		Skill.all.map(&:destroy)
		Interest.all.map(&:destroy)
		Category.all.map(&:destroy)
	end

	desc "Generate sample volunteer and recruiter"
	task :demo_users => :environment do
		User.create({
			first_name: 'Jay',
			last_name: 'Bolton',
			email: 'volunteer@demo.com',
			password: 'password',
			password_confirmation: 'password',
			volunteer: true
		})

		User.create({
			first_name: 'Bob',
			last_name: 'Ross',
			email: 'recruiter@demo.com',
			password: 'password',
			password_confirmation: 'password',
			recruiter: true
		})
	end

	desc "Generate sample opportunities"
	task :demo_ops => :environment do
		10.times do
			Opportunity.create({
				:area => categories.sample,
				:country => countries.sample,
				:end_date => (33 + rand(3)).months.from_now,
				:start_date => (6 + rand(3)).months.from_now,
				:name => "Educate schoolchildren in Kenya about the causes and dangers of HIV/AIDS and disease prevention through storytelling",
				:recruiter_id => User.where(:recruiter => true).last.id,
				:status => "Accepting Applications"
			})
		end
	end
end
