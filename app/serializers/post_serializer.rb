# frozen_string_literal: true

class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :user_id, :created_at, :user_name
  has_many :comments

  def comments
    return object.comments unless scope.nil?
  end

  def user_name
    return object.user.first_name + ' ' + object.user.last_name unless scope.nil?
  end
end
