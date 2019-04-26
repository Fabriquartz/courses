class Calculation < ApplicationRecord
  validates :value_a, :value_b, :operator, presence: true

  before_save do
    self.result = value_a.public_send(operator, value_b)
  end

  scope :sort_by_created_at, -> {
    order(created_at: :desc)
  }

  scope :recent, -> {
    where(created_at: 5.minutes.ago..Time.now)
  }
end
