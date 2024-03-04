class Favorite < ApplicationRecord
  belongs_to :user_id
  belongs_to :book_id

  validates :user_id, uniqueness: {scope: :book_id}
end
