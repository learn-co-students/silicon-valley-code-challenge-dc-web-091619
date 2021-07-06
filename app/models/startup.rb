
# --- Startup#domain
# returns a string that is the startup's domain
# Once a startup is created, the domain cannot be changed 
# (ie. A developer working with instances of the Startup class 
# cannot directly change the domain)
# --- Startup#pivot
# given a string of a domain and a string of a name, change the domain 
# and name of the startup. This is the only public method through which 
# the domain can be changed.
# --- Startup.all
# should return all of the startup instances
# --- Startup.find_by_founder
# given a string of a founder's name, returns the first startup whose 
# founder's name matches
# --- Startup.domains
# should return an array of all of the different startup domains
# --- Startup#sign_contract
# given a venture capitalist object, type of investment (as a string), 
# and the amount invested (as a float), creates a new funding round 
# and associates it with that startup and venture capitalist.
# --- Startup#num_funding_rounds
# Returns the total number of funding rounds that the startup has gotten
# --- Startup#total_funds
# Returns the total sum of investments that the startup has gotten
# --- Startup#investors
# Returns a unique array of all the venture capitalists that have invested 
# in this company
# --- Startup#big_investors
# Returns a unique array of all the venture capitalists that have invested 
# in this company and are in the Trés Commas club

class Startup 

    attr_reader :name, :founder, :domain

    @@all = []
   
    def pivot(name, domain)
        @name = name
        @domain = domain
        @@all << self
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
