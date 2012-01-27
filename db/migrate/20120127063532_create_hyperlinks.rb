class CreateHyperlinks < ActiveRecord::Migration
  def change
    create_table :hyperlinks do |t|
      t.integer :page_id
      t.string :url

      t.timestamps
    end
  end
end
