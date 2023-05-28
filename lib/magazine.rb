class Magazine
    attr_accessor :name, :category
  
    @@all = []
  
    def initialize(name, category)
      @name = name
      @category = category
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def contributors(author = nil)
        if author.nil?
          Article.all.select { |article| article.magazine == self }
                     .map { |article| article.author }
                     .uniq
        else
          Article.all.select { |article| article.magazine == self && article.author == author }
                     .map { |article| article.author }
                     .uniq
        end
      end
  
    def self.find_by_name(name)
      @@all.find { |magazine| magazine.name == name }
    end
  
    def article_titles
      Article.all.select { |article| article.magazine == self }
                 .map { |article| article.title }
    end
  
    def contributing_authors
      contributors.select { |author| author.articles.count > 2 }
    end
  end
  