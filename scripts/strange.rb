Group.destroy_all
Node.destroy_all

group = Group.create
apple = Fruit.create(group_id: group.id)
java = Fruit.create(group_id: group.id, parent_id: apple.id)
pink_lady = Fruit.create(group_id: group.id, parent_id: apple.id)
golden_delicious = Fruit.create(group_id: group.id, parent_id: apple.id)

ActiveRecord::Base.logger = Logger.new(STDOUT)
puts "This is missing WHERE type='Fruit' AND group_id='x'"
group.fruits.arrange

puts "This has a where clause"
group.nodes.arrange
