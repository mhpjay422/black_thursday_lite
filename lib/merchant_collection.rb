require 'CSV'

class MerchantCollection
  attr_reader :merchants
  def initialize(merchants)
    @merchants = merchants
  end

  def all
    merchants
  end
  
  def find(idx)
    # require "pry"; binding.pry
    @merchants.find {|merc| merc.id[:id] == idx.to_s }
  end
end