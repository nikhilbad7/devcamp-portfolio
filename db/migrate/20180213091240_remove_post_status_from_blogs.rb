class RemovePostStatusFromBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :status, :string
  end
end
