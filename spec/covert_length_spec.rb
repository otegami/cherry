require 'spec_helper.rb'
RSpec.describe 'Convert Length' do
  it 'return a valid value about length' do
    expect(convert_length(1, from: :m, to: :in)).to eq 39.37
    expect(convert_length(15, from: :in, to: :m)).to eq 0.38
    expect(convert_length(35000, from: :ft, to: :m)).to eq 10670.73
  end
end
