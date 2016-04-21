class Project < ActiveRecord::Base
	has_many :time_entries

	def self.clean_old
		old_projects = Project.where("created_at ?", Time.now - 1.day)

		old_projects.destroy_all
	end
end
