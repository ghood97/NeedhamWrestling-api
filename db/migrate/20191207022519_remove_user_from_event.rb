# frozen_string_literal: true

class RemoveUserFromEvent < ActiveRecord::Migration[5.2]
  def change
    remove_reference :events, :user, foreign_key: true
  end
end
