class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def user
   User.find(self.user_id)
  
  end

  def product
    Product.find(self.product_id)
  end
  def print_review
    puts "Review for #{self.product.product_name} by #{self.user.user_name}: #{self.star_rating}. #{self.comments}"
  end

  def leave_review(user, star_rating, comment)
    Review.create(user_id: user.id, product_id: self.id, star_rating: star_rating, comments: comment)
  end
end


