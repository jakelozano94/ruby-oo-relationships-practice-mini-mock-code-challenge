class Book
    attr_reader :title, :word_count
    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select {|pair| pair.book == self}
    end

    def authors
        book_authors.map{|pair| pair.author}
    end

    def self.coauthors
        Book.all.select {|book| book if book.authors.length > 1}
    end



end