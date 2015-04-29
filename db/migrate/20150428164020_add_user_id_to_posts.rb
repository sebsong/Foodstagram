class AddUserIdToPosts < ActiveRecord::Migration
  def change
      add_column :posts, :user_id, :integer
  end
  add_attachment :posts, :image
end
