class CreateGenresBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books_genres, :id => false do |t|
      t.string :genre_id
      t.string :book_id

      t.timestamps
    end
  end
end
