require 'pry'

class Song
  extend Memorable, Findable 
  include Findable, Paramable

  attr_accessor :name
  attr_reader :artist

  @@all = []

  def initialize
    @@all << self
  end

  # def self.find_by_name(name)
  #   @@all.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end
  #
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  #
  # def self.count
  #   self.all.count
  # end
  #
  def self.all
    @@all
  end
end
