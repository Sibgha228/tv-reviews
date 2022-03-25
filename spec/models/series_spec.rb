# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Series, type: :model do
  subject { FactoryBot.create(:series) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:genre) }
  it { should validate_presence_of(:seasons_count) }
  it { should validate_presence_of(:first_release_date) }
  it { should validate_presence_of(:director) }
  it { should validate_presence_of(:actor) }
  it { should validate_presence_of(:shoot_location) }
  it { should validate_presence_of(:country) }

  it 'should create a valid record' do
    expect(subject.valid?).to be(true)
  end
end
