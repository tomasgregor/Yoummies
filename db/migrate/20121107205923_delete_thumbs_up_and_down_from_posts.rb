class DeleteThumbsUpAndDownFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :thumbup
    remove_column :posts, :thumbwown
  end
end
