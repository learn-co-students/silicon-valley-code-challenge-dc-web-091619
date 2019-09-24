class VentureCapitalist
    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name, total_worth)
        @name = name 
        @total_worth = total_worth.to_i
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select { |people| people.total_worth > 1000000000}
    end

    def funding_rounds
        FundingRound.all.select {|fundings| fundings.capitalist == self}
    end

    def portfolio
        self.funding_rounds.map {|fundings| fundings.startup}.uniq #uniq used to get rid of duplicates if there is any
    end

    def biggest_investment
        #returns the largest funding round given by this venture capitalist
        self.funding_rounds.max_by {|funding| funding.investment}
    end

    def invested(domainString)

        find_domain =  self.funding_rounds.select do |funding|
            funding.startup.domain == domainString
        end
        
        find_domain.map {|funding| funding.investment}.sum
    end


end
