# require_relative '../lib/article.rb'
# require_relative '../lib/author.rb' 
# require_relative '../lib/magazine.rb'

# Create authors
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

# Create magazines
magazine1 = Magazine.new("Tech Today", "Technology")
magazine2 = Magazine.new("Sports Weekly", "Sports")
# Create authors
author1 = Author.new("John Doe")
author2 = Author.new("Jane Smith")

# Create magazines
magazine1 = Magazine.new("Tech Today", "Technology")
magazine2 = Magazine.new("Sports Weekly", "Sports")

# Create articles
article1 = Article.new(author1, magazine1, "The Latest Tech Trends")
article2 = Article.new(author2, magazine1, "Understanding Artificial Intelligence")
article3 = Article.new(author1, magazine2, "The Impact of Sports in Society")

# Test the methods

# Article methods
puts "Article Methods:"
puts "Title: #{article1.title}"
puts "Author: #{article1.author.name}"
puts "Magazine: #{article1.magazine.name}"
puts ""

# Author methods
puts "Author Methods:"
puts "Author Name: #{author1.name}"
puts "Articles Written by Author:"
author1.articles.each { |article| puts "- #{article.title}" }
puts "Magazines Contributed by Author:"
author1.magazine.each { |magazine| puts "- #{magazine.name}" }
puts ""

# Magazine methods
puts "Magazine Methods:"
puts "Magazine Name: #{magazine1.name}"
puts "Magazine Category: #{magazine1.category}"
puts "Contributors for Magazine:"
magazine1.contributors.each { |author| puts "- #{author.name}" }
puts ""

# Association and Aggregate Methods
puts "Association and Aggregate Methods:"
author1.add_article(magazine2, "Sports and Health")
puts "Author's Topic Areas:"
author1.topic_areas.each { |category| puts "- #{category}" }
puts "Finding a Magazine by Name:"
found_magazine = Magazine.find_by_name("Sports Weekly")
puts "Found Magazine: #{found_magazine.name}"
puts "Article Titles for Magazine:"
found_magazine.article_titles.each { |title| puts "- #{title}" }
puts "Contributing Authors for Magazine:"
found_magazine.contributing_authors.each { |author| puts "- #{author.name}" }
# # Create articles
# article1 = Article.new(author1, magazine1, "The Latest Tech Trends")
# article2 = Article.new(author2, magazine1, "Understanding Artificial Intelligence")
# article3 = Article.new(author1, magazine2, "The Impact of Sports in Society")

# # Test the methods

# # Article methods
# puts "Article Methods:"
# puts "Title: #{article1.title}"
# puts "Author: #{article1.author.name}"
# puts "Magazine: #{article1.magazine.name}"
# puts ""

# # Author methods
# puts "Author Methods:"
# puts "Author Name: #{author1.name}"
# puts "Articles Written by Author:"
# author1.articles.each { |article| puts "- #{article.title}" }
# puts "Magazines Contributed by Author:"
# author1.magazines.each { |magazine| puts "- #{magazine.name}" }
# puts ""

# # Magazine methods
# puts "Magazine Methods:"
# puts "Magazine Name: #{magazine1.name}"
# puts "Magazine Category: #{magazine1.category}"
# puts "Contributors for Magazine:"
# magazine1.contributors.each { |author| puts "- #{author.name}" }
# puts ""

# # Association and Aggregate Methods
# puts "Association and Aggregate Methods:"
# author1.add_article(magazine2, "Sports and Health")
# puts "Author's Topic Areas:"
# author1.topic_areas.each { |category| puts "- #{category}" }
# puts "Finding a Magazine by Name:"
# found_magazine = Magazine.find_by_name("Sports Weekly")
# puts "Found Magazine: #{found_magazine.name}"
# puts "Article Titles for Magazine:"
# found_magazine.article_titles.each { |title| puts "- #{title}" }
# puts "Contributing Authors for Magazine:"
# found_magazine.contributing_authors.each { |author| puts "- #{author.name}" }