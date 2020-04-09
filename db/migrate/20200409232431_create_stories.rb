class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :blurb
      t.date :date
      t.string :link

      t.timestamps
    end
  end
end
