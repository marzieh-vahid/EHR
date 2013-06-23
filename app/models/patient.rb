class Patient < ActiveRecord::Base
  attr_accessible :birthdate, :family, :fathername, :gender, :mellicode, :name, :patientID, :doctor_id
 validates :doctor_id, presence: true
  belongs_to :doctor
  has_many :skins, dependent: :destroy
  has_many :eyesystems, dependent: :destroy
has_many :earsystems, dependent: :destroy
has_many :psychiatrics, dependent: :destroy
has_many :muscles, dependent: :destroy
has_many :nerves, dependent: :destroy
has_many :generals, dependent: :destroy


end
