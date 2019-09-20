class FundingRound

    attr_accessor :type
    attr_reader :startup, :venturecapitalist, :investment
    @@all = []
    
    def initialize(type, investment)
        @@all << self
    end

    def investment=(investment)
        if investment < 0
            @investment = 0
        else @investment = investment.to_i
        end
    end

    def self.all
        @@all
    end




end
