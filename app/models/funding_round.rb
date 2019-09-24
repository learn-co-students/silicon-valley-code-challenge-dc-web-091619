class FundingRound
    attr_accessor :name, :type, :investment
    attr_reader :startup, :capitalist

    @@all = []

    def initialize(name, startup, capitalist, type, investment)
        @name = name
        @startup = startup
        @capitalist = capitalist
        @type = type
        @investment = investment
        @@all << self
    end

    def self.all
        @@all
    end

    
end
