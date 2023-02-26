class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews


  def self.reviews
    Review.all.map{  |x| x}
  end
  def self.products
    Product.all.map{ |x| x}
  end
end