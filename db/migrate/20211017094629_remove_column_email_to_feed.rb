class RemoveColumnEmailToFeed < ActiveRecord::Migration[5.2]
  def change
    remove_column :feeds, :email, :text
  end
end
