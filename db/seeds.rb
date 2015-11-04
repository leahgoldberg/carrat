# Users

morgan = User.create(points: 70000, first_name: "Morgan", last_name: "Stanley", email: "m.stanly@example.com")

# Transactions

morgan.transactions.create(vendor: "Whole Foods", amount:10.25, category: "Groceries")
morgan.transactions.create(vendor: "Whole Foods", amount:17.15, category: "Groceries")
morgan.transactions.create(vendor: "Whole Foods", amount:80.56, category: "Groceries")
morgan.transactions.create(vendor: "Whole Foods", amount:80.56, category: "Groceries")
morgan.transactions.create(vendor: "Whole Foods", amount:80.56, category: "Groceries")
morgan.transactions.create(vendor: "Nordstrom", amount:520.56, category: "Fashion")
morgan.transactions.create(vendor: "Nordstrom", amount:200.88, category: "Fashion")
morgan.transactions.create(vendor: "Nordstrom", amount:144.52, category: "Fashion")
morgan.transactions.create(vendor: "Nordstrom", amount:200.88, category: "Fashion")
morgan.transactions.create(vendor: "Trader Joes", amount:144.52, category: "Groceries")
morgan.transactions.create(vendor: "Trader Joes", amount:144.52, category: "Groceries")
morgan.transactions.create(vendor: "Starbucks", amount:4.45, category: "Coffee")
morgan.transactions.create(vendor: "Starbucks", amount:4.45, category: "Coffee")
morgan.transactions.create(vendor: "Starbucks", amount:3.32, category: "Coffee")
morgan.transactions.create(vendor: "Starbucks", amount:4.45, category: "Coffee")
morgan.transactions.create(vendor: "Starbucks", amount:4.45, category: "Coffee")
morgan.transactions.create(vendor: "Starbucks", amount:3.32, category: "Coffee")

# Vendors

Vendor.create(name: "Whole Foods", category: "Groceries", logo: "groceries_icon.png")
Vendor.create(name: "Nordstrom", category: "Fashion", logo: "fashion_icon.png")
Vendor.create(name: "Trader Joes", category: "Groceries", logo: "groceries_icon.png")
Vendor.create(name: "Starbucks", category: "Coffee", logo:"coffee_icon.png")


# Challenges
amt = [10,20,50,80,100,120,150,200,500]
time = ["between 12-2PM","anytime","between 8AM-12PM","between 10AM-12PM","between 2PM-4PM","between 2PM-6PM"]
pts = [2,2,2,2,3]

Vendor.all.each do |v|
	v.challenges.create(spend_amount: amt.sample, time_frame: time.sample, points_multiplier: pts.sample)
end

# Rewards
cost = [200,500,1000,2000,5000,10000,50000]

#Reward.create(point_cost: cost.sample, vendor: Vendor.all.sample, title: "???")

# Notifications

morgan.notifications.create(content: "Redeemed fine art prints from Imagine Squares for 1000 carrats", notified_day: "Yesterday at 12:02 PM")
morgan.notifications.create(content: "Completed 3x points challenge at Exxon for 250 carrats", notified_day: "Yesterday at 1:22 PM")
morgan.notifications.create(content: "Redeemed Jamaican vacation from American Airlines for 50,000 carrats", notified_day: "Yesterday at 6:28 PM")







