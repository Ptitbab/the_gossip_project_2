class User < ApplicationRecord
  belongs_to :city, optional: true
  has_many :gossips
  has_many :join_message_recepients
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "JoinMessageRecepient"
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end