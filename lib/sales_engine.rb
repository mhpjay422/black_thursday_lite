require 'CSV'
require_relative 'item_collection.rb'
require_relative 'merchant_collection.rb'
require_relative 'merchant.rb'
require_relative 'item.rb'

class SalesEngine 
  attr_reader :file_names
  def initialize(file_names)
    @file_names = file_names
  end

  def self.from_csv(file)
    SalesEngine.new(file)
  end

  def merchant_collection
    arr = []
    CSV.foreach(self.file_names[:merchants], headers:true) do |row|
      rowhash = row.to_hash

      arr << Merchant.new({:id => rowhash['id']}, {:name => rowhash['name']})
    end
    

    MerchantCollection.new(arr)
  end  

  def item_collection 
    # CSV.foreach(file, headers:true) do |row|
    # end
  end
end