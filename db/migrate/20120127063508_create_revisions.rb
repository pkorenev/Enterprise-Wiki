class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.integer :page_id
      t.string :title
      t.text :body
      t.string :markup_name
      t.integer :theme_id
      t.boolean :is_minor_edit
      t.text :commit_message

      t.timestamps
    end
  end
end
