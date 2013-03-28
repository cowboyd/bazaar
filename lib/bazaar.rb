require "bazaar/version"

module Bazaar
  def self.item
    get_item("items").capitalize
  end
  def self.adj
    get_item("adj").capitalize
  end
  def self.object
    (get_item("adj") + ' ' + get_item("items")).capitalize
  end
  def self.super_item
    get_item("superitems").capitalize
  end
  def self.super_adj
    get_item("superadj").capitalize
  end
  def self.super_object
    (get_item("superadj") + ' ' + get_item("superitems")).capitalize
  end
  def self.heroku
    get_item("superadj") + '-' + get_item("superitems") + '-' + rand(0-9999).to_s
  end
  def self.get_item(filename)
    File.read(File.expand_path("../bazaar/#{filename}.txt", __FILE__)).split("\n").sample
  end
end
