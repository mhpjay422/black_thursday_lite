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
    merchants.find {|merc| merc.id == idx.to_s }
  end
end