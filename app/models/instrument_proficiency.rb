class InstrumentProficiency < ActiveRecord::Base
  belongs_to :instrument
  belongs_to :user
end
