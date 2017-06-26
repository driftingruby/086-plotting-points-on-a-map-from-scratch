# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
500.times do
  store = Store.new
  store.name = Faker::Company.name
  store.latitude = Faker::Address.latitude
  store.longitude = Faker::Address.longitude

  parameters = []
  parameters << { closed: true }
  parameters << { open_time: '8:00AM', closing_time: '8:00PM' }
  parameters << { open_time: '8:00AM', closing_time: '5:00PM' }
  parameters << { open_time: '7:00AM', closing_time: '9:00PM' }
  parameters << { open_time: '8:00AM', closing_time: '12:00PM' }

  %w(sunday monday tuesday wednesday thursday friday saturday).each do |day|
    params = parameters.sample
    params[:day] = day
    store.operation_hours.new(params)
  end
  store.save!
end