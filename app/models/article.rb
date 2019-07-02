class Article
    attr_accessor :title, :content
    attr_reader :author, :magazine
    attr_writer
    @@all = []
# An article is initialized with an author as an Author object, a magazine as a Magazine object, title as a string, and content as a string. An article **cannot** change its author or magazine after it is has been initialized.

    def initialize(author, magazine, title, content)
        @author = author
        @magazine = magazine
        @title = title
        @content = content
        @@all.push(self)
    end
    # + `Article.all`
    #   + Returns an array of all Article instances
    def self.all
        @@all
    end
    
    # + `Article#author`
    #   + Returns the author for that given article --- self.author ALREADY DOES THIS
    # + `Article#magazine`
    #   + Returns the magazine for that given article ---- self.magazine ALREADY DOES THIS
    # + `Article#title`
    #   + Returns the title for that given article --- self.title ALREADY DOES THIS
    # + `Article#content`
    #   + Returns the content for that given article -- self.content ALREADY DOES THIS

end