class TimeEntry < ActiveRecord::Base
	belongs_to :projects
	validates :hours, presence: true
end
