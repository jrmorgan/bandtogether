class CreateInstrumentProficiencies < ActiveRecord::Migration
  def change
    create_table :instrument_proficiencies do |t|
      t.integer :years_of_experience
      t.references :instrument, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
