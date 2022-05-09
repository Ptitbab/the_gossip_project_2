class RemoveRecipientColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :private_messages, :recipient_id, :integer
  end
end
