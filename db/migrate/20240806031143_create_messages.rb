class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.references :chat, null: false, foreign_key: true
      t.text :content
      t.integer :role

      t.timestamps
    end
  end
end
