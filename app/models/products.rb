class Product < ActiveRecord::Base
  has_many :reviews
  has_many :users, through: :reviews

def self.get_reviews
  User.all.map{  |review| review} 
end


end

