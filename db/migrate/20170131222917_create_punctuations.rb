class CreatePunctuations < ActiveRecord::Migration[5.0]
  def change
    create_table :punctuations do |t|

      t.timestamps
    end
  end
end
