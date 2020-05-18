class AddColumnToBooks < ActiveRecord::Migration[5.2]
  def change
  	add_column :books, :title, :string
  	            # テーブル　カラム名　型
  end
end
