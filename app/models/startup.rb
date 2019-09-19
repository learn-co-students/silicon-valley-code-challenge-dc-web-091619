class Startup

    attr_accessor :name, :venture_capitalist, :funding_round
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


end
