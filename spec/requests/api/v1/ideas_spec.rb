# frozen_string_literal: true

require 'rails_helper'

describe '登録するとき' do
  before do
    @idea = FactoryBot.attributes_for(:idea)
  end

  it 'アイデアが登録される' do
    expect do
      post '/api/v1/ideas', params: @idea
    end.to change { Idea.count }.by(1)
    expect(response.status).to eq 201
  end
end
