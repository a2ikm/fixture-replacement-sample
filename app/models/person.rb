class Person < ActiveRecord::Base
  belongs_to :group
  validates_uniqueness_of :name
end
