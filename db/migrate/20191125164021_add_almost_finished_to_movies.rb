class AddAlmostFinishedToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :almost_finished?, :boolean
  end
end
