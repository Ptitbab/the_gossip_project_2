class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_gossip_tags
  has_many :tags, through: :join_gossip_tags
  has_many :comments#, as: :commentalbe
  validates :title, presence: true, length: { in: 3..14 }
  validates :content, presence: true
end
