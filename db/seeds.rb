
Blog.destroy_all;

3.times do |topic|
  Topic.create!(
    title:"Topic #{topic}"
    )
end


10.times  do |blog|
  Blog.create!(
    title:Faker::ChuckNorris.fact,
    body:Faker::Lorem.paragraph,
    topic_id:Topic.last.id
  )
end

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized:15
  )
end

puts "5 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}" ,
    subtitle:Faker::Lorem.sentence(3, true) ,
    body:Faker::Lorem.paragraph,
    main_image: "http://placehold.it/600x400",
    thumb_image:  "http://placehold.it/350x150"
  )
end
1.times do |portfolio_item|
  Portfolio.create!(
    title:"Portfolio title: #{portfolio_item}" ,
    subtitle:"Angular",
    body:Faker::Lorem.paragraph,
    main_image: "http://placehold.it/600x400",
    thumb_image:  "http://placehold.it/350x150"
  )
end


puts "9 portfolios created"
