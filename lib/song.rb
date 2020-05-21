require 'pry'

class Song
  
  extend Findable::ClassMethods
  extend Memorable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    self.class.all << self
    # @@songs << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end
  
  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
