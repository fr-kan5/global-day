class Memo < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title, length: { maximum: 50 }
    validates :content, length: { maximum: 1000 }
  end
end
