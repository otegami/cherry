require "spec_helper.rb"

RSpec.describe "gate" do
  let(:umeda) { Gate.new(:umeda) }
  let(:juso) { Gate.new(:juso) }
  let(:mikuni) { Gate.new(:mikuni) }

  describe "Umeda to Juso" do
    it "is enough fare" do
      ticket = Ticket.new(150)
      umeda.enter(ticket)
      expect(juso.exit(ticket)).to be_truthy
    end
  end

  describe "Umeda to Mikuni" do
    context "fare is not enough" do
      it "is NG" do
        ticket = Ticket.new(150)
        umeda.enter(ticket)
        expect(mikuni.exit(ticket)).to be_falsey
      end
    end
    context "fare is enough" do
      it "is OK" do
        ticket = Ticket.new(190)
        umeda.enter(ticket)
        expect(mikuni.exit(ticket)).to be_truthy
      end
    end
  end

  describe "Juso to Mikuni" do
    it "is enough fare" do
      ticket = Ticket.new(150)
      juso.enter(ticket)
      expect(mikuni.exit(ticket)).to be_truthy
    end
  end

  describe "Mikuni to umeda" do
    context "fare is not enough" do
      it "is NG" do
        ticket = Ticket.new(150)
        mikuni.enter(ticket)
        expect(umeda.exit(ticket)).to be_falsey
      end
    end
    context "fare is enough" do
      it "is OK" do
        ticket =Ticket.new(190)
        mikuni.enter(ticket)
        expect(umeda.exit(ticket)).to be_truthy
      end
    end
  end
end
