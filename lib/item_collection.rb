require 'CSV'

class ItemCollection
  attr_reader :items
  def initialize(items)
    @items = items
  end

  def all
    items
  end

  def where(hash)
    found = items.select do |item| 
      case hash.keys
      when [:merchant_id]
        item.merchant_id == hash.values[0].to_s      
      when [:name]
        item.name == hash.values[0]          
      when [:price]
        item.unit_price == hash.values[0].to_s            
      end  
    end
    found
  end
end