class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :join_message_recepients
  has_many :recipients, class_name: "User", through: :join_message_recepients
end
