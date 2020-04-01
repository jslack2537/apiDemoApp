# frozen_string_literal: true

# include Filterable
class User < ApplicationRecord
  has_many :logins
  devise :database_authenticatable, :validatable
end
