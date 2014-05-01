class AddPrimaryInstrumentToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :primary_instrument, index: true
  end
end
