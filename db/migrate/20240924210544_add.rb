class Add < ActiveRecord::Migration[7.1]
  def change
    add_column :cats, :image, :string
  end
end
