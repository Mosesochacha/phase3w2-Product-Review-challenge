class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

def self.get_reviews
  User.all.map{  |review| review} 
end

# Returns a collection of all the Reviews for the Product
def self.reviews
  Product.all.map{ |product| product.reviews }
end
# Returns a collection of all the Users who reviewed the Product
def self.users 
  User.all.map{ |products| products.reviews }
end
end

