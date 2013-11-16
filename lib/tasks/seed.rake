
skills = ["Agriculture", "Forestry", "TESL/TEFL", "Spanish Language", "French Language", "Teaching", "Bachelor's Degree", "Accounting", "Computer Software"]

interests = ["Education", "Health", "Youth & Community Development", "Business Development", "Agriculture", "Environment"]

categories = ["Education", "Health & HIV/AIDS", "Youth & Community Development", "Business and Information & Communication Technology", "Agriculture", "Environment"]

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
end
