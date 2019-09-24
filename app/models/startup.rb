class Startup
    attr_accessor :name, :domain 
    attr_reader :founder

    @@all = []

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self 
    end

    def self.all
        @@all
    end

    def pivot(domain, name) #take the domain and the new name of the startup
        self.domain = domain 
        self.name = name
    end

    def self.find_by_founder(founder)
        #given a string of a founder's name, returns the first startup whose founder's name matches
        founders = self.all.select do |startup|
            startup.founder == founder
        end

        founders[0] #in place incase founder has multiple start ups
    end

    def self.domains
        self.all.map {|startups| startups.domain}
    end

    def num_funding_rounds
        #Returns the total number of funding rounds that the startup has gotten
        FundingRound.all.select {|funding| funding.startup == self}.count
    end

    def fundings
        FundingRound.all.select {|funding| funding.startup == self}
    end

    def total_funds
        #Returns the total sum of investments that the startup has gotten
        fundings.map {|funding| funding.investment}.sum
    end

    def investors 
        #Returns a unique array of all the venture capitalists that have invested in this company
        fundings.map {|funding| funding.capitalist.name}.uniq  #uniq added to get rid of any duplicates if any
    end

    def big_investors
        bigInvestors = fundings.map{|funding| funding.capitalist}
        bigInvestors.select { |investors| investors.total_worth > 1000000000}
    end




end
