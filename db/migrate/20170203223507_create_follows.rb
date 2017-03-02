class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :follower
      t.integer :following

      t.timestamps
    end
    add_index 'follows', [follower], name: 'index_follow_on_follower', using: :btree
    add_index 'follows', [following], name: 'index_following_on_follower', using: :btree
  end
end
