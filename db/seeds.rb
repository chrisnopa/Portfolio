
Blog.destroy_all;


10.times  do |blog|
  Blog.create!(
    title:Faker::ChuckNorris.fact,
    body:Faker::Lorem.paragraph
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized:15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}" ,
    subtitle:Faker::Lorem.sentence(3, true) ,
    main_image: "http://placehold.it/600x400",
    thumb_image:  "http://placehold.it/350x150"
  )
end

puts "9 portfolios created"
