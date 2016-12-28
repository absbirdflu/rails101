class Group < ApplicationRecord
  has_many :group_relationships
  has_many :members, through: group_relationships, source: :user
  has_many :posts
  validates :title, presence: true
end
