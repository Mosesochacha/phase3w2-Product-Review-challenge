class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :products
# Returns the User instance for this Review
  def self.user
    User.all
  end
  # Returns the Product instance for this Review
  def self.product
    Product.all
  end

  
end