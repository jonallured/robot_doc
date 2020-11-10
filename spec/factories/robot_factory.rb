# frozen_string_literal: true

FactoryBot.define do
  factory :robot do
    name { 'r2d2' }
    color { 'blue' }
    user
  end
end
