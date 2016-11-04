module GaryBusey
  class Response
    # @!attribute [r] authorization_token
    # @return [String] the +retref+ authorization reference token from the CardConnect API
    attr_reader :authorization_token

    # @!attribute [r] http_response
    # @return [Faraday::Response] the raw HTTP response object
    attr_reader :http_response

    # @!attribute [r] message
    # @return [String] the +resptext+ response from the CardConnect API
    attr_reader :message

    # @!attribute [r] result
    # @return [Hash] a portion of the +http_response+ object's body, parsed into a hash
    attr_reader :result

    # @!attribute [r] token
    # @return [String] the follow up transaction token
    attr_reader :token

    # @param http_response [Struct]
    # @return [GaryBusey::Response]
    def initialize(percent_decline:)
      @percent_decline = percent_decline
      @result = {message: GARY_QUOTES[rand(3)]}
    end

    def emv
      "lethal weapon"
    end

    def http_response
      response = OpenStruct.new
      response.body = {transaction_id: random_string}.to_json
      response.status = 200
    end

    # @return [Boolean] if the response was successful based off random decline rate
    def successful?
      math = @percent_decline || 0
      rand(100) < (100 - math)
    end

    def random_string
      Faker::Code.asin
    end

    def message
      GARY_QUOTES[rand(3)]
    end

    alias :authorization_token :random_string
    alias :token :random_string

    GARY_QUOTES = [
      "Have a mind that's open to everything, get attached to nothing.",
      "My dark side, my shadow, my lower companion is now in the back room blowing up balloons for kids' parties.",
      "It's a very strange silence that I'm living in right now. It's a silence that has a lot of activity and noise in it from a zone that I don't live in on this earth."
    ]
  end
end
