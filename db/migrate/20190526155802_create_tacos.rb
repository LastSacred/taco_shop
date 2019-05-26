class CreateTacos < ActiveRecord::Migration[5.2]
  def change
    create_table :tacos do |t|
      t.string :notes
      t.string :meat
      t.boolean :rice
      t.boolean :salsa

      t.timestamps
    end
  end
end
