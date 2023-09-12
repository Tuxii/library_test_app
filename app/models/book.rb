class Book < ApplicationRecord
  belongs_to :borrower, class_name: "User", optional: true

  validates :title, :isbn, presence: true
end
