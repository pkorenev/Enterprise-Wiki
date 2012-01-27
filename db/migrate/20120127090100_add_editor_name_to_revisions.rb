class AddEditorNameToRevisions < ActiveRecord::Migration
  def change
    add_column :revisions, :editor_name, :string

  end
end
