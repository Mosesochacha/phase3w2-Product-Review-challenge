class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews
  def self.reviews
    Review.find(self.user_id)
  end
  def self.products
    Product.find(self.user_id)
  end
end