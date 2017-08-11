# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
  Topic.create!(
    title: "topic #{topic}"
  )
end
puts "3 topics created"

10.times do |blognum|
  Blog.create!(
  title: "My Blog Post #{blognum}",
  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eget hendrerit turpis. Suspendisse diam turpis, tristique eleifend porttitor id, scelerisque at orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at tellus magna. Maecenas mattis augue ac dapibus malesuada. Pellentesque scelerisque efficitur nulla, ac iaculis elit fringilla ut. Vivamus suscipit scelerisque ultricies. Maecenas cursus neque vitae vehicula finibus. Curabitur sed dignissim purus. Mauris pharetra quis enim mattis pulvinar.",
  topic_id: Topic.last.id
  )

end

puts "10 blog posts created"

5.times do |skillnum|
  Skill.create!(
  title: "Rails #{skillnum}",
  percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
Portfolio.create!(
title: "Portfoio title: #{portfolio_item}" ,
subtitle: "Ruby on Rails" ,
body: "Etiam vitae neque ullamcorper tortor blandit rhoncus id facilisis nunc. Duis ullamcorper tempus consequat. Morbi dictum rhoncus nulla nec gravida. Etiam porta metus ut mauris interdum, venenatis hendrerit dolor mollis. Morbi varius turpis lobortis lectus pharetra, ac  gravida est hendrerit. Pellentesque volutpat libero quis felis mollis posuere. Nullam eu dui eget enim tempor ullamcorper." ,
main_image: "http://via.placeholder.com/600x400",
thumb_image: "http://via.placeholder.com/350x200" ,

)
end
1.times do |portfolio_item|
Portfolio.create!(
title: "Portfoio title: #{portfolio_item}" ,
subtitle: "Angular" ,
body: "Etiam vitae neque ullamcorper tortor blandit rhoncus id facilisis nunc. Duis ullamcorper tempus consequat. Morbi dictum rhoncus nulla nec gravida. Etiam porta metus ut mauris interdum, venenatis hendrerit dolor mollis. Morbi varius turpis lobortis lectus pharetra, ac  gravida est hendrerit. Pellentesque volutpat libero quis felis mollis posuere. Nullam eu dui eget enim tempor ullamcorper." ,
main_image: "http://via.placeholder.com/600x400",
thumb_image: "http://via.placeholder.com/350x200" ,

)
end


  puts "9 portfoio items created"
