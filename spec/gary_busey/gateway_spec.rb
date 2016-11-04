require 'spec_helper'

describe GaryBusey::Gateway do

  subject(:gateway){ GaryBusey::Gateway.new(percent_decline: 20) }

  describe "expected common interface for external gateway libraries" do
    it "responds to '#authorize'" do
      expect(gateway).to respond_to(:authorize)
    end

    it "responds to '#capture'" do
      expect(gateway).to respond_to(:capture)
    end

    it "responds to '#credit'" do
      expect(gateway).to respond_to(:credit)
    end

    it "responds to '#refund'" do
      expect(gateway).to respond_to(:refund)
    end

    it "responds to '#sale'" do
      expect(gateway).to respond_to(:sale)
    end

    it "responds to '#void'" do
      expect(gateway).to respond_to(:void)
    end

    it "responds to '#store_card'" do
      expect(gateway).to respond_to(:store_card)
    end
  end

  describe "making requests" do
    it "should fail all the time if percent is 100" do
      gateway = GaryBusey::Gateway.new(percent_decline: 100)
      response = gateway.authorize(100,{},{})
      expect(response.successful?).to be_falsey
    end

    it "should succeed all the time if percent is 0" do
      gateway = GaryBusey::Gateway.new(percent_decline: 0)
      response = gateway.authorize(100,{},{})
      expect(response.successful?).to be_truthy
    end
  end
end