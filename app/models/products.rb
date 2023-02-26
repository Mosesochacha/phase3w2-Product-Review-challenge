class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

def self.reviews
   Review.find(product_ids)
end
def users
  User.find(self.user_ids)
end

def print_all_reviews
  puts "Review for #{self.product_name} by #{self.users.user_name}: #{self.star_rating}. #{self.comments}"
end

def average_rating
  self.reviews.average(:star_rating)
end

end

