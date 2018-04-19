class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
    	t.string :valor

      t.timestamps
    end
  end
end
