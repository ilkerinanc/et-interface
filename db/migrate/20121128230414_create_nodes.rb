class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :author_id
      t.string :tid
      t.text :value
      t.string :in_reply_to_tid
      t.string :permalink
      t.datetime :posted_at
      t.integer :category_id
      t.string :what
      t.string :location
      t.integer :amount
      t.text :extra
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
