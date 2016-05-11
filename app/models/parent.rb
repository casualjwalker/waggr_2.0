class Parent < ActiveRecord::Base
	has_many :doggies
	validates :name, presence: true
end
