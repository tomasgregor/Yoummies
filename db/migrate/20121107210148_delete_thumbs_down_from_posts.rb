class DeleteThumbsDownFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :thumbdown
  end
end
