class Homeroom < ActiveRecord::Base
    validates :name, presence: true, uniqueness: true
    validates :teacher, presence: true, uniqueness: true
    validates :goal, presence: true
    has_many :weeks
end
