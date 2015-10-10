# Users

User.create(points: 7000, first_name: "Morgan", last_name: "Stanley", email: "m.stanly@example.com")

# Vendors

Vendor.create(name: "Whole Foods", category: "Groceries")
Vendor.create(name: "Giant", category: "Groceries")
Vendor.create(name: "Harris Teeter", category: "Groceries")
Vendor.create(name: "Trader Joes", category: "Groceries")

Vendor.create(name: "Exxon", category: "Gas")
Vendor.create(name: "BP", category: "Gas")
Vendor.create(name: "Sunoco", category: "Gas")

Vendor.create(name: "Express", category: "Fashion")
Vendor.create(name: "Nordstrom", category: "Fashion")
Vendor.create(name: "Macys", category: "Fashion")

Vendor.create(name: "Starbucks")
Vendor.create(name: "Open Kitchen")
Vendor.create(name: "Target")

# Challenges
amt = [10,20,50,80,100,120,150,200,500]
time = ["between 12-2PM","anytime","between 8AM-12PM","between 10AM-12PM","between 2PM-4PM","between 2PM-6PM"]
pts = [2,2,2,2,3]

Vendor.all.each do |v|
	Challenge.create(vendor: v, spend_amount: amt.sample, time_frame: time.sample, points_multiplier: pts.sample)
end

# Rewards
cost = [200,500,1000,2000,5000,10000,50000]

#Reward.create(point_cost: cost.sample, vendor: Vendor.all.sample, title: "???")






