require 'CSV'

class ItemCollection
  attr_reader :items
  def initialize(items)
    @items = items
  end

  def all
    items
  end

  def where(merchant_id)
    items.find {|item| item.merchant_id == merchant_id}
  end
end