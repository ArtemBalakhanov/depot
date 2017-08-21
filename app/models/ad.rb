class Ad < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :topic, optional: true
  validates :title, :description, :image_url, :topic_id, :user_id, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
               # URL должен указывать на изображение формата GIF, JPG или PNG
  }
end
