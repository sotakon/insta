class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.bigint "user_id"
      t.bigint "picture_id"
    end
  end
end
