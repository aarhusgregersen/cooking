class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :blog_posts
  has_many :recipes, dependent: :destroy
  has_one :profile, dependent: :destroy

  accepts_nested_attributes_for :profile
end
