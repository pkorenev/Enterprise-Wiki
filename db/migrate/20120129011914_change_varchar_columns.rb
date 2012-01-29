class ChangeVarcharColumns < ActiveRecord::Migration
  def up
    change_column :pages,     :path, :string, :limit => 2000
    change_column :hyperlinks, :url, :string, :limit => 2000
    change_column :themes,    :path, :string, :limit => 500
  end

  def down
  end
end
