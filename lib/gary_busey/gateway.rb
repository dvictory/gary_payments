module GaryBusey

  class Gateway

    def initialize(percent_decline:)
      @percent_decline = percent_decline
    end

    def authorize(money, credit_card_or_reference, options = {})
      standard_response
    end

    def capture(money, authorization, options = {})
      standard_response
    end

    #When we don't have the original card
    def credit(money, credit_card, options = {})
      standard_response
    end

    #When we have the card
    def refund(money, reference, options = {})
      standard_response
    end

    def sale(money, credit_card_or_reference, options = {})
      standard_response
    end

    def store_card(credit_card)
      raise "Gary Don't Plan that Game!! Sto yo card some place else!"
    end

    def standard_response
      GaryBusey::Response.new percent_decline: @percent_decline
    end

    def void(authorization, options = {})
      standard_response
    end

  end
end
