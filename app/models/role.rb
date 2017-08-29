class Role < ApplicationRecord
  #protected_attributes :name
  has_many :users
end
