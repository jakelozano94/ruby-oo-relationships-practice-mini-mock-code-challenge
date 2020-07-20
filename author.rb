class Author
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors
        BookAuthor.all.select {|pair| pair.author == self}
    end

    def books
        book_authors.map{|pair| pair.book}
    end

    def write_book(title, word_count)
        var = Book.new(title, word_count)
        BookAuthor.new(var, self)
    end

    def total_words
        books.sum{|book| book.word_count}
    end

    def self.most_words
        Author.all.max_by{|x| x.total_words}
    end

end
