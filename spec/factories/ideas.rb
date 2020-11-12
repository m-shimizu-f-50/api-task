# frozen_string_literal: true

FactoryBot.define do
  factory :idea do
    category_id { 1 }
    body { 'body' }
  end
end
