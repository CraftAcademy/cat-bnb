require 'rails_helper'

RSpec.describe Listing, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :pet_name }
    it { is_expected.to have_db_column :pet_location }
    it { is_expected.to have_db_column :pet_description }
    it { is_expected.to have_db_column :start_date }
    it { is_expected.to have_db_column :end_date }
    it { is_expected.to have_db_column :pet_picture }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :pet_name }
    it { is_expected.to validate_presence_of :pet_location }
    it { is_expected.to validate_presence_of :pet_description }
    it { is_expected.to validate_presence_of :start_date }
    it { is_expected.to validate_presence_of :end_date }
    it { is_expected.to validate_presence_of :pet_picture }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:offers)}
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:listing)).to be_valid
    end
  end
end