class CreateQuartos < ActiveRecord::Migration
  def change
    create_table :quartos do |t|
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
