require './lib/sales_engine.rb'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})


merchant_collection = sales_engine.merchant_collection
item_collection = sales_engine.item_collection
merchants = merchant_collection.all
merchant = merchant_collection.find(12334105)
item_all = item_collection.all
items = item_collection.where(merchant.id) 
merchant_create = merchant_collection.create({name: "jon"}) 
