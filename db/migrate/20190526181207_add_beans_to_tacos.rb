class AddBeansToTacos < ActiveRecord::Migration[5.2]
  def change
    add_column :tacos, :beans, :boolean
  end
end
