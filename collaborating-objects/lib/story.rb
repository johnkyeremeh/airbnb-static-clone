class Story
    attr_accessor :name
    attr_reader :author


    def author=(author)
        raise AssociationTypeMismatchError, "#{author.class} received, Author expected." if !author.is_a?(Author)
        @author = author 
        author.add_story(self)
    end
    
end