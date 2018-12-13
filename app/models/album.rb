class Album < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :photos, dependent: :destroy

  validates_presence_of :name, :owner_id
end
