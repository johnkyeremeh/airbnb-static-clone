class Author 
    attr_accessor :name

    def initialize
        @stories = []
    end

    def stories 
        @stories.dup.freeze  
    end

    def add_story(story)
        raise AssociationTypeMismatchError, "#{story.class} received, Story expected." if !story.is_a?(Story)
        @stories << story
    end 

    def bibliography
        #go through all the story instances and grab each story names
        self.stories.collect{|s| s.name}
        # @stories.collect(&:name) => Symbol to Proc
    end


end