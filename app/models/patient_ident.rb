class PatientIdent < ActiveRecord::Base
  attr_accessible :daybirth, :family, :fathername, :gender, :mellicode, :monthbirth, :name, :patientID, :yearbirth, :doctorid
  belongs_to :doctor
  has_many :skins, dependent: :destroy
  has_many :eye_systems, dependent: :destroy
has_many :ear_systems, dependent: :destroy
has_many :psychiatrics, dependent: :destroy
has_many :muscle_joints_bone_systems, dependent: :destroy
has_many :nerves, dependent: :destroy
has_many :generals, dependent: :destroy

end
