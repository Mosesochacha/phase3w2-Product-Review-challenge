class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def user
   user= User.find(self.user_id)
   user.save
   user
  end

  def product
    Product.find(self.product_id)
  end
  def print_review
    puts "Review for #{self.product.product_name} by #{self.user.user_name}: #{self.star_rating}. #{self.comments}"
  end
end


