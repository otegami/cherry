require "spec_helper.rb"

RSpec.describe 'Deep Freeze' do
  describe 'to_array' do
    it "freezes array deeply" do
      expect(Team::COUNTRIES).to eq (['Japan', 'US', 'India'])
      expect(Team::COUNTRIES).to be_frozen
      expect(Team::COUNTRIES.all?{ |country| country.frozen? }).to be_truthy
    end
  end
  describe 'to_hash' do
    it "freezes hash deeply" do
      expect(Bank::CURRENCIES).to eq ({ 'japan' => 'yen', 'US' => 'dollar', 'India' => 'ruppe' })
      expect(Bank::CURRENCIES).to be_frozen
      expect(Bank::CURRENCIES.all?{ |key, value| key.frozen? && value.frozen? }).to be_truthy
    end
  end
end
