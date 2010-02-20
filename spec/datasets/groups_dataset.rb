class GroupsDataset < Dataset::Base
  def load
    3.times do |i|
      # さきほど定義したdataset用のblueprintを指定
      group_id = create_record :group, "group#{i}", Group.plan(:dataset) 

      # Group.plan時にはリレーションが張ってあるPersonは生成されない（blueprintを参照）ため、
      # 別個に生成を行う必要がある
      5.times do |j|
        # さきほど定義したdataset用のblueprintを指定
        create_record :person, "person#{j}_group#{i}", Person.plan(:dataset, :group_id => group_id)
      end
    end
  end
end
