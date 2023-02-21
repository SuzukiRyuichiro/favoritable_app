# frozen_string_literal: true

FactoryBot.define do
  factory :favorite do
    favoritable { create(:product) }
    user { create(:user) }
  end
end
