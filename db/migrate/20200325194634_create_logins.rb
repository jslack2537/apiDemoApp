# frozen_string_literal: true

class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.belongs_to :user, index: { unique: true }, foreign_key: true
      t.datetime :date
      t.timestamps
    end
  end
end
