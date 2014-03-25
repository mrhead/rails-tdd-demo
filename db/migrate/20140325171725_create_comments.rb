class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :post_id, index: true

      t.timestamps
    end
  end
end
