class CreateChampionViews < ActiveRecord::Migration[5.1]
  def change
    create_table :champion_views do |t|
      t.string :slide

      t.timestamps
    end
  end
end
