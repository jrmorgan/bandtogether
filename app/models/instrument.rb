class Instrument < ActiveRecord::Base
	has_many :instrument_proficiences
	has_many :users, through: :instrument_proficiences

	has_many :primary_players, class_name: "User", foreign_key: "primary_instrument_id"
end
