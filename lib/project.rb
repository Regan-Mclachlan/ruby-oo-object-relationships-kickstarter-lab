class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |backer|
         backer.project == self
        end
        project_backers.map do |backee| backee.backer
        end
     end

end