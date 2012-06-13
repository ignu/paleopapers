class AddBooleansToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :gluten, :boolean
    add_column :papers, :omega6, :boolean
    add_column :papers, :sleep,  :boolean
    add_column :papers, :fat,    :boolean
  end
end
