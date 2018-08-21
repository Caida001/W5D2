class RenameColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :subs, :moderator_id, :author_id
  end
end
