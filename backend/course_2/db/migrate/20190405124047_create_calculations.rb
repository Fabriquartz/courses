class CreateCalculations < ActiveRecord::Migration[5.2]
  def change
    create_table :calculations do |t|
      t.decimal :value_a
      t.decimal :value_b
      t.string :operator
      t.decimal :result

      t.timestamps
    end
  end
end
