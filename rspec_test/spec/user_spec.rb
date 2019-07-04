require "spec_helper"

RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'Taro', age: age) }
    subject { user.greet }

    shared_examples "greet by child" do
      it { is_expected.to eq 'ぼくはTaroだよ。' }
    end
    context "just 0 years old" do
      let(:age) { 0 }
      it_behaves_like 'greet by child'
    end
    context "under 12 years old" do
      let(:age) { 12 }
      it_behaves_like 'greet by child'
    end

    shared_examples "greet by adult" do
      it { is_expected.to eq '僕はTaroです。' }
    end
    context "over 13 years old " do
      let(:age) { 13 }
      it_behaves_like 'greet by adult'
    end
    context "just 100 years old" do
      let(:age) { 100 }
      it_behaves_like 'greet by adult'
    end
  end
end
