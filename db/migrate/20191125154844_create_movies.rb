class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :director
      t.text :cast
      t.string :duration
      t.float :rating

      t.timestamps
    end
  end
end
