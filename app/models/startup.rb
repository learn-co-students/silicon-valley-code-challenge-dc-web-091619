class Startup

    attr_accessor :startup, :name, :venturecapitalist, :fundinground
    attr_reader :founder, :domain

    @@all = []
   
    def pivot(name, domain)
        self.name = name
        self.domain = domain
        self
    end

    def self.all
        @@all
    end

    def self.find_by_founder(name)
        @@all.find {|ele| ele.founder == name}
    end

    def self.domains
        @@all.map {|ele| ele.domain}
    end

    def sign_contract(venture_capitalist, type_of_investment, investment_amount)
        new_contract = FundingRound.new(type_of_investment,investment_amount)
        new_contract.startup = self
        new_contract.venture_capitalist = venture_capitalist
    end
    
    def num_funding_rounds
        FundingRound.all.length
    end

    def total_funds
        funding_rounds = 
        FundingRound.all.select {|ele| ele.startup == self}
        funding_rounds.reduce(0) 
            {|total, ele| total += ele.investment}
    end

    def investors
        investors = 
        VentureCapitalist.all.select {|ele| ele.startup == self}
        investors.uniq
    end

    def big_investors
        VentureCapitalist.tres_commas_club.uniq
    end

end
