# The long way
record = Hash.new
record[:name] = “Satish”
record[:email] = “mail@satishtalim.com”
record[:phone] = “919371006659”

# the short way
record = Hash[:name, "Satish", :email, "mail@satishtalim.com", :phone, 919371006659]
