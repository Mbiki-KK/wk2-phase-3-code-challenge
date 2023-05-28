class Author
  attr_reader :name

  def initialize(name)
    @name = name
    @articles = []
  end

  def add_article(magazine, title)
    article = Article.new(self, magazine, title)
    @articles << article
    magazine.contributors(self) unless magazine.nil? || magazine == self

    return article
  end

  def articles
    @articles.dup
  end
  
  def magazine
    articles.map { |article| article.magazine }.uniq
  end

  def topic_areas
    areas = Set[]
    
    articles.each do |a|
      next if a.magazine.nil?
      
      areas += [a.magazine.category]
    end
    
    areas.to_a
  end
  
 private
 
  def contribute
    other_author.articles.each { |a| @articles << a }
  end
  
end

