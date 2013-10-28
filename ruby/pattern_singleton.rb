#!/usr/bin/ruby -w
=begin
    The Singleton Pattern is a convention for ensuring one and only one object is instantiated for a given class
    examples include :
      database connections
      thread pools, caches, dialog boxes,
      objects that handle preferences and registry settings

    http://en.wikipedia.org/wiki/Singleton_pattern
    The Abstract Factory, Builder, and Prototype patterns can use Singletons in their implementation.
    Facade Objects are often Singletons because only one Facade object is required.
    State objects are often Singletons.
    Singletons are often preferred to global variables because:
      They do not pollute the global name space (or, in languages with namespaces, their containing namespace) with unnecessary variables.[7]
      They permit lazy allocation and initialization, whereas global variables in many languages will always consume resources.

    classic pattern is to check for existing instance of the class, if not there, instantiate a new object
=end

# http://dalibornasevic.com/posts/9-ruby-singleton-pattern-again
class ConfigLoader

  def get_config
    return {:foo => 'baz', :bar => 'biz'}
  end
  # order of operations:
  # to use a method, it needs to be defined before the init phase
  def initialize
    @log = self.get_config
  end

  @@instance = self.new

  def self.instance
    return @@instance
  end

  def output_config(msg)
    puts @log[msg]
  end

  private_class_method :new
end
