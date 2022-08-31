class Student < ApplicationRecord
  belongs_to :instructor

  validates :name, presence: true
  validate :confirm_adult

  def confirm_adult
    errors.add(:age, :exclusion) if age < 18
  end

end
