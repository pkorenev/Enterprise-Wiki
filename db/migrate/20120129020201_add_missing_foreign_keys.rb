class AddMissingForeignKeys < ActiveRecord::Migration
  def up
    add_foreign_key(:pages, :groups)
    add_foreign_key(:revisions, :pages)
    add_foreign_key(:revisions, :themes)
    add_foreign_key(:hyperlinks, :pages)
    add_foreign_key(:memberships, :groups)
  end

  def down
    remove_foreign_key(:pages)
    remove_foreign_key(:revisions)
    remove_foreign_key(:hyperlinks)
    remove_foreign_key(:memberships)
  end
end
