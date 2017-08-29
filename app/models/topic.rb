class Topic < ApplicationRecord
  #protected_attributes :name, :admin_user_id
  has_many :ad
  belongs_to :admin_user
end
