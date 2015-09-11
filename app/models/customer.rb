class Customer < ActiveRecord::Base

  # Validations
  validates_presence_of :first_name, :mobile
  validates_uniqueness_of :email, :mobile

  # Associations
  has_and_belongs_to_many :identities

  def set_defaults
    self.email = 'Not Available' if self.email.blank?
  end

  def name
    self.first_name
  end
end
