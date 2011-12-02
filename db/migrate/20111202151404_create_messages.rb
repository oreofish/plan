class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.string :content
      t.boolean :has_attachment

      t.timestamps
    end
  end
end
