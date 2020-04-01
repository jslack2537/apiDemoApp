# frozen_string_literal: true

class ChangeUsersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :created_at
    remove_column :users, :updated_at
  end
end
