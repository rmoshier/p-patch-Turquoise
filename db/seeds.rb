# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shovel = Tool.create(name: "Shovel", quantity: 10, in_stock: 10)
rake = Tool.create(name: "Rake", quantity: 5, in_stock: 5)
hoe = Tool.create(name: "Hoe", quantity: 6, in_stock: 6)
trowel = Tool.create(name: "Trowel", quantity: 7, in_stock: 7)
bucket = Tool.create(name: "Bucket", quantity: 5, in_stock: 5)
wheelbarrow = Tool.create(name: "Wheelbarrow", quantity: 4, in_stock: 4)
