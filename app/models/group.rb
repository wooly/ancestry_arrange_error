class Group < ApplicationRecord
  has_many :nodes
  has_many :fruits
end
