class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.integer :follower
      t.integer :following
      t.references :commentary, foreign_key: true
      t.references :for_reading, foreign_key: true
      t.references :favorite_book, foreign_key: true

      t.timestamps
    end
    add_index 'notification', [follower], name: 'index_notification_on_follower', using: :btree
    add_index 'notification', [following], name: 'index_notification_on_following', using: :btree
  end
end
