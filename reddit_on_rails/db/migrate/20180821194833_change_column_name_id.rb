class ChangeColumnNameId < ActiveRecord::Migration[5.2]
  def change
    rename_column :subs, :author_id, :moderator_id
  end
  add_index :subs, :moderator_id
end
