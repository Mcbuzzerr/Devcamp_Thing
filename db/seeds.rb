3.times do |topic|
    Topic.create!(
      title: "Topic #{topic}"    
    )
end

puts "3 Topics created"

10.times do |post|
    Blog.create!(
        title: "Message #{post}",
        body: "This is the #{post}-unth post", 
        topic_id: Topic.last.id
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

8.times do |port|
    Portfolio.create!(
        title: "port #{port}",
        subtitle: "rwby",
        body: "More stuff",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200",
    )
end
1.times do |port|
    Portfolio.create!(
        title: "port #{port}",
        subtitle: "amgular",
        body: "More stuff",
        main_image: "http://placehold.it/600x400",
        thumb_image: "http://placehold.it/350x200",
    )
end
puts "9 portfolios"