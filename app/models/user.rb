class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  MAX_BOOK_COUNT = 3

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, foreign_key: :borrower_id

  validates :books, length: { maximum: MAX_BOOK_COUNT }
end
