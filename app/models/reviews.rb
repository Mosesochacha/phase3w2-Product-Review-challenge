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
end


