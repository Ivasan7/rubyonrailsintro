# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Profile.destroy_all
TodoList.delete_all
TodoItem.destroy_all

people=Hash.new
people["Carly Fiorina"] = 1954
people["Donald Trump"] = 1946
people["Ben Carson"] = 1951
people["Hillary Clinton"] = 1947

people.each do |name, date|
gendah = "male"


userName = name.split(" ")
if (userName[0] == "Carly" || userName[0] == "Hillary")
    gendah = "female"
end

User.create!(username: userName[1] )
User.find_by!(username: userName[1]).create_profile(birth_year: date, first_name: userName[0], last_name: userName[1], gender: gendah)
User.find_by!(username: userName[1]).todo_lists.create(list_due_date: Date.today+1.year, list_name: name)
5.times {TodoList.find_by(list_name: name).todo_items << TodoItem.create!(due_date: Date.today+1.year, title: "ToDoItem", description: "LoFASZt NINCS IS IBOLYA")}

end
