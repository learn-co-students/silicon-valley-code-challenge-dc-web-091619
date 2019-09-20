class VentureCapitalist

    attr_accessor :name, :total_worth, :startup, :fundinground
    @@all = []

    def self.all
        @@all
    end

    def self.tres_commas_club
        @all.select {|ele| ele.total_worth > 1000000000}
    end

end
