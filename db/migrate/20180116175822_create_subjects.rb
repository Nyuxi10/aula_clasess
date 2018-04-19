class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :nombre
      t.references :note, index: true 
      t.timestamps
    end
    add_index :subjects, :note_id
  end
end
