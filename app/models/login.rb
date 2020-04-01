# frozen_string_literal: true

class Login < ApplicationRecord
  belongs_to :user
  scope :day_of_week, ->(day_of_week) { where("strftime('%w', date) = ?", day_of_week.to_s) }
end
