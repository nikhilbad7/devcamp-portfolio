3.times do |topic|
	Topic.create!(title: "Topic #{topic}")
end
puts '3 topics created'
10.times do |blog|
	Blog.create!(
		title: "my blog post #{blog}",
		body: "nikhil badani blog work",
		topic_id: Topic.last.id
		)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
end
puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "portfolio title: #{portfolio_item}",
		subtitle: "ruby on rails",
		body: "nikhil badani portfolio work",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end
1.times do |portfolio_item|
	Portfolio.create!(
		title: "portfolio title: #{portfolio_item}",
		subtitle: "angular",
		body: "nikhil badani portfolio work",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end
puts "9 portfolio created"
3.times do |technology|
	Portfolio.last.technologies.create!(
		name: "Technology#{technology}"
		)
end
puts "3 technologies created"