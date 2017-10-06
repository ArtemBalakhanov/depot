class Ad < ApplicationRecord
  include AASM

  aasm do
    state :draft, :initial => true
    state :new
    state :rejected
    state :approved
    state :published
    state :archive

    event :new do
      transitions :from => :draft, :to => :new
    end

    event :rejected do
      transitions :from => :new, :to => :rejected
    end

    event :approved do
      transitions :from => :new, :to => :approved
    end

    event :published do
      transitions :from => :approved, :to => :published
    end

    event :archive do
      transitions :from => :published, :to => :archive
    end
  end
  #protected_attributes :title, :image_url, :user_id, :topic_id
  #protected_methods :title, :image_url, :user_id, :topic_id
  belongs_to :user, optional: true
  belongs_to :topic, optional: true
  validates :title, :description, :image_url, presence: true #:topic_id, :user_id, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
               # URL должен указывать на изображение формата GIF, JPG или PNG
  }
end
