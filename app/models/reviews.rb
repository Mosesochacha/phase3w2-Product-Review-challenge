class Review < ActiveRecord::Base
  belongs_to :users
  belongs_to :products
end