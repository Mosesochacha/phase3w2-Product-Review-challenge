class User < ActiveRecord::Base
  has_many :reviews
  has_many :products, through: :reviews
  def self.reviews
    Review.find(self.user_id)
  end
  def self.products
    Product.find(self.user_id)
  end


  def favorite_product
    self.products.max_by { |product| product.average_rating }
  end

  def remove_reviews(product)
    self.reviews.where(product_id: product.id).destroy_all
  end

   
end