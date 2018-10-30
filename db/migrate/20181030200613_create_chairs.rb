class CreateChairs < ActiveRecord::Migration[5.2]
  def change
    create_table :chairs do |t|
      t.string :style
      t.string :color

      t.timestamps
    end
  end
end
