# frozen_string_literal: true

class AddUserToLogins < ActiveRecord::Migration[5.2]
  def change
    remove_column :logins, :user_id
    add_reference :logins, :user, foreign_key: true
  end
end
