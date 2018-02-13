10.times do |blog|
	Blog.create!(
		title: "my blog post #{blog}",
		body: "nikhil badani blog work"
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

9.times do |portfolio_item|
	Portfolio.create!(
		title: "portfolio title: #{portfolio_item}",
		subtitle: "my great service",
		body: "nikhil badani portfolio work",
		main_image: "http://via.placeholder.com/600x400",
		thumb_image: "http://via.placeholder.com/350x200"
		)
end
puts "9 portfolio created"