class Profile < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :user

  validates :gender, inclusion: %w(male female)
  validate :name_is_present
  validate :sueless

  def name_is_present
    if (first_name.blank? && last_name.blank?)
      errors.add(:base, :name_is_blank, message: "Some name needs to be provided")
    end
  end

  def sueless
    if gender == "male" && first_name == "Sue"
      errors.add(:first_name, "cannot be Sue")
    end
  end

  def self.get_all_profiles (min, max)
    self.where("birth_year BETWEEN :min_date AND :max_date", min_date: min, max_date: max).order(:birth_year)
  end


end
