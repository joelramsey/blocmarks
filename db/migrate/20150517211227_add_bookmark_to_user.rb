class AddBookmarkToUser < ActiveRecord::Migration
  def change
    add_reference :users, :bookmark, index: true
    add_foreign_key :users, :bookmarks
  end
end
