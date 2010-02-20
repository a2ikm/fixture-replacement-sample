class Group < ActiveRecord::Base
  has_many :people
  validates_uniqueness_of :name
end
