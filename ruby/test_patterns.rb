#!/usr/bin/ruby -w

require './singleton'
foo = ConfigLoader.instance
foo_deux = ConfigLoader.instance
puts foo.equal?(foo_deux) # test to see if they are the same exact object (pointer)
# test actual functionality
foo.output_config(:foo)