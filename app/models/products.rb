class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

def self.reviews
   Review.find(product_ids)
end
def users
  User.find(self.user_ids)
end

end

