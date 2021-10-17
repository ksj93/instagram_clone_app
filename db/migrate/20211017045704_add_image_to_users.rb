class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image, :text ,unsigned: true, limit: 1, null: false, default: 'default.jpg'
  end
end
