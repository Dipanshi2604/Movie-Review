class ChangeTypeToMovies < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :total_gross, :decimal
  end
end
