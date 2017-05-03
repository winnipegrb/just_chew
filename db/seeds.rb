# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

{
  Restaurant => {
    count: 25
  },
  User => {
    count: 1,  attributes: { email: 'user@test.com', password: 'just_chew' }
  }
}.each do |klass, options|
  if klass.count.zero?
    print "Seeding random #{klass.model_name.plural}"
    options[:count].times do
      FactoryGirl.create! klass.model_name.singular, options[:attributes]
      print '.'
    end
    puts ' Done!'
  else
    puts "WARNING: #{klass.model_name.plural} already seeded!"
  end
end
