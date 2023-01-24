class CreateLibraryBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries_books, :id => false do |t|
      t.integer :library_id
      t.integer :book_id
      t.timestamps
    end
  end
end
