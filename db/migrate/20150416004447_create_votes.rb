class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :rating

      t.timestamps
    end
  end
end
