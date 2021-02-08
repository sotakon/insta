class AddTitleToPictures < ActiveRecord::Migration[5.2]
  def change
    add_column :pictures, :content, :string
  end
end
