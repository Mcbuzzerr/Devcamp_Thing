10.times do |post|
    Blog.create!(
        title: "Message #{post}",
        body: "This is the #{post}-unth post"    
        )
end

puts "10 posts"

5.times do |skill|
    Skill.create!(
    title: "Skill # #{skill}",
    percent_utilized: 15
    )
end

puts "5 skills"

9.times do |port|
    Portfolio.create!(
        title: "port #{port}",
        subtitle: "stuff",
        body: "More stuff",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200",
    )
end
puts "9 portfolios"