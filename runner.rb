require './lib/sales_engine.rb'

sales_engine = SalesEngine.from_csv({
  :items     => "./data/items.csv",
  :merchants => "./data/merchants.csv",
})


merchant_collection = sales_engine.merchant_collection
merchants = merchant_collection.all
merchant = merchant_collection.find(12334105)
