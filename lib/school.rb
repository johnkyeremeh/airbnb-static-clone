

class School

    attr_accessor :school
    attr_reader :roster 

    def initialized(school)
        @school = school
        @roster = {}
    end



end 