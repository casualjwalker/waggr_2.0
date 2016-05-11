class Doggy < ActiveRecord::Base
	belongs_to :parent
	validates :name, presence: true
	validates :breed, presence: true
	validates :age, presence: true
	validates :temperment, presence: true
	validates :funfact, presence: true
end
