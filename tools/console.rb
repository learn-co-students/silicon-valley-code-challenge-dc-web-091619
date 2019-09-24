require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Startup
google = Startup.new("Google", "Bill", "google.com")
yahoo = Startup.new("Yahoo", "Jim", "yahoo.com")
target = Startup.new("Target", "Dave", "target.com")

##Startup Class Methods and Properties
google.pivot("goooogle.com", "new google") #WORKS 
Startup.all   #WORKS
Startup.find_by_founder("Dave")   #WORKS
Startup.domains   #WORKS


#Venture Capitalist
capitalist1 = VentureCapitalist.new("John Doe", 5000000000)
capitalist2 = VentureCapitalist.new("Bill Murry", 30000000)
capitalist3 = VentureCapitalist.new("Harry Herrera", 2000000000)

#Venture Capitalist Methods
VentureCapitalist.tres_commas_club  #WORKS

#Funding Round
funding1 = FundingRound.new("funding1", google, capitalist2, "Angel", 10000)
funding2 = FundingRound.new("funding2", yahoo, capitalist1, "Pre-Seed", 50000)
funding3 = FundingRound.new("funding3", target, capitalist3, "Seed", 30000)
funding4 = FundingRound.new("funding4", google, capitalist1, "Series A", 10000)
funding5 = FundingRound.new("funding5", target, capitalist2, "Series C", 40000)
funding5 = FundingRound.new("funding5", target, capitalist2, "Series C", 20000)


#Funding Round Methods
funding1.startup  #WORKS
funding2.capitalist #WORKS
funding3.type   #WORKS
funding4.investment   #WORKS
FundingRound.all    #WORKS

#Startups Methods
google.num_funding_rounds #WORKS
target.total_funds    #WORKS
google.investors  #WORKS
google.big_investors #WORKS

#Venture Capitalist 
capitalist1.funding_rounds  #WORKS
capitalist1.portfolio   #WORKS
capitalist2.biggest_investment  #WORKS
capitalist2.invested("target.com")  #WORKS


binding.pry
0 #leave this here to ensure binding.pry isn't the last line