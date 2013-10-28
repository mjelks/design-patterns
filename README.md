design-patterns
===============

This is a quick repository for design patterns implemented in various languages. To be used as a starting point as needed.

Ruby Basic Class Principles
```ruby
class Publication
    attr_reader :subscriber
    attr_writer :press
    attr_accessor :price, :publisher

    def initialize(publisher)
        puts "@publisher\n"
    end
end
```

