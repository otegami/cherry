require 'spec_helper'

RSpec.describe "Effects" do
  describe "Reverse" do
    it "makes words to reverse" do
      effect = Effects.reverse
      expect(effect.call('Ruby is fun!')).to eq('ybuR si !nuf')
    end
  end
  describe "Echo" do
    context "makes words to echo" do
      it "is twice" do
        effect = Effects.echo(2)
        expect(effect.call('Ruby is fun!')).to eq('RRuubbyy iiss ffuunn!!')
      end
      it "is three times" do
        effect = Effects.echo(3)
        expect(effect.call('Ruby is fun!')).to eq('RRRuuubbbyyy iiisss fffuuunnn!!!')
      end
    end
  end
  describe "Loud" do
    context "make words be loud" do
      it "is twice" do
        effect = Effects.loud(2)
        expect(effect.call('Ruby is fun!')).to eq('RUBY!! IS!! FUN!!!')
      end
      it "is three times" do
        effect = Effects.loud(3)
        expect(effect.call('Ruby is fun!')).to eq('RUBY!!! IS!!! FUN!!!!')
      end
    end
  end
end
