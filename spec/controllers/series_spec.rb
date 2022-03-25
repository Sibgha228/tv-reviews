require 'rails_helper'

RSpec.describe SeriesController, type: :controller do
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:valid_session) { {} }

  describe 'GET index' do
    it 'assigns all series as @series' do
      series = Series.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:series)).to eq([series])
    end
  end
end
