class User < ApplicationRecord
  validates :myouzi, presence: true, length: { maximum:10 }
  validates :namae, presence: true,length: { maximum:10 }
  validates :email, presence: true,format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, format:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i,length: { in: 9..15 }
  validates :password_confirmation, presence: true, format:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i,length: { in: 9..15 }
  has_secure_password
end
