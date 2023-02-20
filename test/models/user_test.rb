# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'email shoud not be blank' do
    user = User.new
    assert_not user.valid?
  end

  test 'user created with email and password' do
    user = create(:user)
    assert user.valid?
  end
end
