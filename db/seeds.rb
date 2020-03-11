# frozen_string_literal: true

puts "Let's start seeding!"

puts 'Destroying gardens!'

if Rails.env.development?
  Garden.destroy_all
  Plant.destroy_all
end

puts 'Creating gardens!'
little = Garden.create!(
  name: 'My Little Garden',
  banner_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg'
)

Plant.create!(
  name: 'Monstera',
  image_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg',
  garden: little
)

puts 'Creating plants!'
Plant.create!(
  name: 'Philo',
  image_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg',
  garden: little
)

Plant.create!(
  name: 'Brazilwood',
  image_url: 'https://static3.tcdn.com.br/img/img_prod/450860/muda_de_pau_brasil_caesalpinia_echinata_666_2_20190611094005.jpg',
  garden: little
)

Plant.create!(
  name: 'Dieff',
  image_url: 'https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg',
  garden: little
)



puts 'Done!'
puts 'Is it though?'























batch_376 = Garden.create!(
  name: 'Stockholm #376',
  banner_url: 'https://images.unsplash.com/photo-1516382772789-f9bfd7cb7532?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80'
)

students_pictures = ["https://avatars0.githubusercontent.com/u/60282525?v=4", "https://avatars1.githubusercontent.com/u/60602713?v=4", "https://avatars3.githubusercontent.com/u/53917461?v=4", "https://avatars0.githubusercontent.com/u/60267962?v=4", "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1580724990/byxs97zx9ug8wt89fdnx.jpg", "https://avatars2.githubusercontent.com/u/59294246?v=4", "https://avatars1.githubusercontent.com/u/58052561?v=4", "https://avatars0.githubusercontent.com/u/59875556?v=4"]
students_names = ["Madeline Andrean", "Daniel Hermansson", "Sander Nobel", "Raphaelle Richard De Latour", "Felix Rönn", "Nina Skyttmo", "Gheorghe Tarcea", "Alexandre Zagame"]
students = students_pictures.zip students_names

students.each do |student|
  Plant.create! name: student[1], image_url: student[0], garden: batch_376
end
