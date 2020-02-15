class CreateTemperaturas < ActiveRecord::Migration[5.2]
  def change
    create_table :temperaturas do |t|
      t.string :maxima
      t.string :minima
      t.string :temperatura
      t.timestamp :registro

      t.timestamps
    end
  end
end
