require 'machinist/active_record'
require 'sham'
require 'faker'

Sham.define do
  person_name { Faker::Name.name }
  group_name { Faker::Company.catch_phrase }
  age { rand(100) }
  boolean(:unique => false) { [true, false].rand }
end

Group.blueprint do
  name { Sham.group_name }
  hidden { Sham.boolean }
end

Group.blueprint(:dataset) do
  name { Sham.group_name + "(dataset)" }
end

Person.blueprint do
  name { Sham.person_name }
  age
  hidden { Sham.boolean }
  group { Group.make }
end

Person.blueprint(:dataset) do
  name { Sham.person_name + "(dataset)" }
  group { Group.make(:dataset) }
end
