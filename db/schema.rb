# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120129020201) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hyperlinks", :force => true do |t|
    t.integer  "page_id"
    t.string   "url",        :limit => 2000
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "hyperlinks", ["page_id"], :name => "hyperlinks_page_id_fk"

  create_table "memberships", :force => true do |t|
    t.integer  "group_id"
    t.string   "user_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "memberships", ["group_id"], :name => "memberships_group_id_fk"

  create_table "pages", :force => true do |t|
    t.string   "path",       :limit => 2000
    t.string   "owner_name"
    t.integer  "group_id"
    t.integer  "permission"
    t.integer  "type"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "pages", ["group_id"], :name => "pages_group_id_fk"

  create_table "revisions", :force => true do |t|
    t.integer  "page_id"
    t.string   "title"
    t.text     "body"
    t.string   "markup_name"
    t.integer  "theme_id"
    t.boolean  "is_minor_edit"
    t.text     "commit_message"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "editor_name"
  end

  add_index "revisions", ["page_id"], :name => "revisions_page_id_fk"
  add_index "revisions", ["theme_id"], :name => "revisions_theme_id_fk"

  create_table "themes", :force => true do |t|
    t.string   "name"
    t.string   "path",       :limit => 500
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "variables", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_foreign_key "hyperlinks", "pages", :name => "hyperlinks_page_id_fk"

  add_foreign_key "memberships", "groups", :name => "memberships_group_id_fk"

  add_foreign_key "pages", "groups", :name => "pages_group_id_fk"

  add_foreign_key "revisions", "pages", :name => "revisions_page_id_fk"
  add_foreign_key "revisions", "themes", :name => "revisions_theme_id_fk"

end
