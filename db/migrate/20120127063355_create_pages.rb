class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :path
      t.string :owner_name
      t.integer :group_id
      t.integer :permission
      t.integer :type

      t.timestamps
    end
  end
end
