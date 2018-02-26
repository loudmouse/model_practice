class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 50 },
                   uniqueness: { case_sensitive: false }
  validates :link, presence: true, length: { maximum: 50 },
                   uniqueness: { case_sensitive: false }
end
