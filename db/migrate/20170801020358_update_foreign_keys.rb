class UpdateForeignKeys < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :comments, :blogs

    # add the new foreign_key
    add_foreign_key :comments, :blogs, on_delete: :cascade
  end
end