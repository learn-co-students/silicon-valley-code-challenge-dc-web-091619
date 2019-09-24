Startup
# --- Startup#name
# returns a string that is the startup's name
# --- Startup#founder
# returns a string that is the founder's name
# Once a startup is created, the founder cannot be changed.
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


FundingRound
########### Join Model
# --- FundingRound#startup
# returns the startup object for that given funding round
# Once a funding round is created, I should not be able to change the startup
# --- FundingRound#venture_capitalist
# returns the venture capitalist object for that given funding round
# Once a funding round is created, I should not be able to change the venture capitalist
# --- FundingRound#type
# returns a string that is the type of funding round
# Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C, etc.
# --- FundingRound#investment
# returns a number that is the amount invested during this funding round
# This should be a float that is not a negative number.


Venture Capitalist
# --- VentureCapitalist#name
# returns a string that is the venture capitalist's name
# --- VentureCapitalist#total_worth
# returns a number that is the total worth of this investor 
# (e.g., think of it as how much money they have)
# --- VentureCapitalist.all
# returns an array of all venture capitalists
# --- VentureCapitalist.tres_commas_club
# returns an array of all venture capitalists in the Trés Commas club
# (they have more then 1,000,000,000 total_worth)
# --- VentureCapitalist#offer_contract
# given a startup object, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
# --- VentureCapitalist#funding_rounds
# returns an array of all funding rounds for that venture capitalist
# --- VentureCapitalist#portfolio
# Returns a unique list of all startups this venture capitalist has funded
# --- VentureCapitalist#biggest_investment
# returns the largest funding round given by this venture capitalist
# --- VentureCapitalist#invested
# given a domain string, returns the total amount invested in that domain