# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  subject { FactoryBot.create(:review) }

  it { should validate_presence_of(:user_name) }
  it { should validate_presence_of(:rating) }
  it { should validate_presence_of(:review) }

  it 'should create a valid record' do
    expect(subject.valid?).to be(true)
  end
end
