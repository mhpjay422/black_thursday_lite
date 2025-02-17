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

  def create(name)
    max_merchant_id = merchants.max_by {|merc| merc.id}
    max_id_plus_one = (max_merchant_id.id.to_i + 1).to_s
    new_merch = Merchant.new(:id => max_id_plus_one, :name => name)
    @merchants << Merchant.new(:id => max_id_plus_one, :name => name)
    @merchants.last
  end

  def update(data) 
    index = @merchants.index {|merc| merc.id == data[:id]}
    @merchants[index] = Merchant.new(data)
    @merchants[index]
  end

  def destroy(id)
    index = @merchants.index {|merc| merc.id == id.to_s}
    @merchants.delete_at(index)
  end
end