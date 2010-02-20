class PeopleDataset < Dataset::Base
  def load
    10.times do |i|
      create_record :person, "perople#{i}", Person.plan(:dataset)
    end
  end
end
