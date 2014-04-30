class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :memberships
  has_many :projects, through: :memberships

  has_many :instrument_proficiencies
  has_many :instruments, through: :instrument_proficiencies

  belongs_to :primary_instrument, class_name: "Instrument"

end
