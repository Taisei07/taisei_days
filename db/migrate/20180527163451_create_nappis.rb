class CreateNappis < ActiveRecord::Migration[5.2]
  def change
    create_table :nappis do |t|
      t.string :year
      t.string :age

      t.timestamps
    end
  end
end
