class Location < ApplicationRecord
  include OrganizationScope

  belongs_to :facility
  has_many :enclosures

  validates :name, :facility_id, presence: true

  delegate :name, to: :facility, prefix: true
end