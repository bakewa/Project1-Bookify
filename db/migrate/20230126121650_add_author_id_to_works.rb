class AddAuthorIdToWorks < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :author_id, :integer
  end
end
