class RenameSahresTableToPostsTable < ActiveRecord::Migration
      def change
          rename_table :shares, :posts
      end
end
