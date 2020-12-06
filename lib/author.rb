class Author
    attr_accessor :name, :title
  
    def initialize(name)
      @name = name
    end
  
    def add_post_by_title(title)
      post = Post.new(title, self)
    end
  
    def posts
      Post.all.select { |post| post.author == self }
    end

    def add_post(post)
        post.author = self
    end
    
    def posts_by_title
      authors_posts = []
      post.all_by_title.each do |post|
        if post.author == self 
          authors_posts << post.title 
        end  
      end
      def self.post_count
        Post.all.count
      end
    
  end
end