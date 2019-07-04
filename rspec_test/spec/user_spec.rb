require "spec_helper"

RSpec.describe User do
  let(:user) { User.new(name: 'Taro', age: age) }
  shared_context "under 12 years old" do
    let(:age) { 12 }
  end

  shared_context "over 13 years old" do
    let(:age) { 13 }
  end

  describe '#greet' do
    subject { user.greet }
    shared_examples "greet by child" do
      it { is_expected.to eq 'ぼくはTaroだよ。' }
    end
    context "just 0 years old" do
      let(:age) { 0 }
      it_behaves_like 'greet by child'
    end
    context "under 12 years old" do
      include_context "under 12 years old"
      it_behaves_like 'greet by child'
    end
    shared_examples "greet by adult" do
      it { is_expected.to eq '僕はTaroです。' }
    end
    context "over 13 years old " do
      include_context "over 13 years old"
      it_behaves_like 'greet by adult'
    end
    context "just 100 years old" do
      let(:age) { 100 }
      it_behaves_like 'greet by adult'
    end
  end
  describe '#chidl?' do
    subject { user.child? }
    context "under 12 years old" do
      include_context "under 12 years old"
      it { is_expected.to eq true }
    end
    context "over 13 years old" do
      include_context "over 13 years old"
      it { is_expected.to eq false }
    end
  end
end
