class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #protected_attributes :email, :name, :role_id
  belongs_to :role, optional: true
  has_many :ad, :dependent => :destroy
  validates_presence_of :name
  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: "Guest" if self.role.nil?
  end

  def admin?
    self.role.name == "Admin"
  end

  def user?
    self.role.name == "User"
  end

  def guest?
    self.role.name == "Guest"
  end
end
