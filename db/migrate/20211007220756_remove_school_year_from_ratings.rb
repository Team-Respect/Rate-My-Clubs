class RemoveSchoolYearFromRatings < ActiveRecord::Migration[6.1]
  def change
    remove_column :ratings, :school_year
  end
end
