require 'spec_helper'

RSpec.describe "Word Synth" do
  describe "Play" do
    it "returns words without effects" do
      synth = WordSynth.new
      expect(synth.play("Ruby is fun!")).to eq("Ruby is fun!")
    end
    it "returns words with reverse effect" do
      synth = WordSynth.new
      synth.add_effect(Effects.reverse)
      expect(synth.play("Ruby is fun!")).to eq("ybuR si !nuf")
    end
    it "returns words with many effects" do
      synth = WordSynth.new
      synth.add_effect(Effects.echo(2))
      synth.add_effect(Effects.loud(3))
      synth.add_effect(Effects.reverse)
      expect(synth.play("Ruby is fun!")).to eq("!!!YYBBUURR !!!SSII !!!!!NNUUFF")
    end
  end
end
