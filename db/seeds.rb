user1 = User.create!(email: 'shropshire@example.com', password: 'shropshire', password_confirmation: 'shropshire', agent_id: "11111111" ,approved: true )
user2 = User.create!(email: 'glasgow@example.com', password: 'glasgowglasgow', password_confirmation: 'glasgowglasgow', agent_id: "22222222" ,approved: true )
user3 = User.create!(email: 'essex@example.com', password: 'essexessex', password_confirmation: 'essexessex', agent_id: "33333333"  ,approved: false)
user4 = User.create!(email: 'london@example.com', password: 'londonlondon', password_confirmation: 'londonlondon', agent_id: "44444444",approved: false  )
user5 = User.create!(email: 'cardiff@example.com', password: 'cardiffcardiff', password_confirmation: 'cardiffcardiff', agent_id: "55555555" ,approved: false )

#sales user 1
# user1.sales << Sale.create(week_number: 1, year_number: 2016, lotto: 150.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 2, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 150.00 , scratchcard: 60.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 3, year_number: 2016,lotto: 90.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 75.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 4, year_number: 2016,lotto: 150.00, lotto_plus: 10.00, euro_millions: 90.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 5, year_number: 2016,lotto: 150.00, lotto_plus: 10.00, euro_millions: 190.00, euro_millions_plus: 40.00 , scratchcard: 50.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 6, year_number: 2016,lotto: 45.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 69.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 7, year_number: 2016,lotto: 150.00, lotto_plus: 40.00, euro_millions: 160.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 8, year_number: 2016,lotto: 150.00, lotto_plus: 40.00, euro_millions: 160.00, euro_millions_plus: 50.00 , scratchcard: 70.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 9, year_number: 2016,lotto: 200.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 10, year_number: 2016,lotto: 52.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 11, year_number: 2016,lotto: 150.00, lotto_plus: 70.00, euro_millions: 50.00, euro_millions_plus: 35.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 12, year_number: 2016,lotto: 150.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 13, year_number: 2016,lotto: 65.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 14, year_number: 2016,lotto: 150.00, lotto_plus: 70.00, euro_millions: 50.00, euro_millions_plus: 100.00 , scratchcard: 190.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 15, year_number: 2016,lotto: 150.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 50.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 16, year_number: 2016,lotto: 90.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 17, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 70.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 18, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 19, year_number: 2016,lotto: 110.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 250.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 20, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 70.00, euro_millions_plus: 50.00 , scratchcard: 170.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 21, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 35.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 21, year_number: 2016,lotto: 40.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 75.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 22, year_number: 2016,lotto: 150.00, lotto_plus: 10.00, euro_millions: 90.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 23, year_number: 2016,lotto: 150.00, lotto_plus: 10.00, euro_millions: 90.00, euro_millions_plus: 40.00 , scratchcard: 50.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 24, year_number: 2016,lotto: 45.00, lotto_plus: 100.00, euro_millions: 40.00, euro_millions_plus: 69.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 25, year_number: 2016,lotto: 150.00, lotto_plus: 40.00, euro_millions: 160.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 26, year_number: 2016,lotto: 150.00, lotto_plus: 40.00, euro_millions: 160.00, euro_millions_plus: 50.00 , scratchcard: 70.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 27, year_number: 2016,lotto: 200.00, lotto_plus: 100.00, euro_millions: 40.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 28, year_number: 2016,lotto: 52.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 29, year_number: 2016,lotto: 150.00, lotto_plus: 70.00, euro_millions: 50.00, euro_millions_plus: 35.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 30, year_number: 2016,lotto: 150.00, lotto_plus: 50.00, euro_millions: 45.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 31, year_number: 2016,lotto: 65.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 32, year_number: 2016,lotto: 150.00, lotto_plus: 70.00, euro_millions: 50.00, euro_millions_plus: 100.00 , scratchcard: 190.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 33, year_number: 2016,lotto: 150.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 60.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 34, year_number: 2016,lotto: 90.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 35, year_number: 2016,lotto: 20.00, lotto_plus: 100.00, euro_millions: 70.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 36, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 37, year_number: 2016,lotto: 220.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 250.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 38, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 70.00, euro_millions_plus: 50.00 , scratchcard: 170.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 39, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 35.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 40, year_number: 2016, lotto: 150.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "11111111" )
# user1.sales << Sale.create(week_number: 41, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 150.00 , scratchcard: 60.00, agent_id: "11111111" )
#
#
# #sales user 2
# user2.sales << Sale.create(week_number: 1, year_number: 2016,lotto: 20.00, lotto_plus: 40.00, euro_millions: 60.00, euro_millions_plus: 150.00 , scratchcard: 60.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 2, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 75.00 , scratchcard: 120.00, agent_id: "11111111" )
# user2.sales << Sale.create(week_number: 3, year_number: 2016,lotto: 150.00, lotto_plus: 10.00, euro_millions: 80.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 4, year_number: 2016, lotto: 150.00, lotto_plus: 10.00, euro_millions: 90.00, euro_millions_plus: 40.00 , scratchcard: 50.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 5, year_number: 2016,lotto: 45.00, lotto_plus: 100.00, euro_millions: 20.00, euro_millions_plus: 80.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 6, year_number: 2016,lotto: 150.00, lotto_plus: 40.00, euro_millions: 40.00, euro_millions_plus: 90.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 7, year_number: 2016,lotto: 150.00, lotto_plus: 20.00, euro_millions: 120.00, euro_millions_plus: 120.00 , scratchcard: 70.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 8, year_number: 2016,lotto: 200.00, lotto_plus: 70.00, euro_millions: 80.00, euro_millions_plus: 100.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 9, year_number: 2016,lotto: 52.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 10, year_number: 2016,lotto: 150.00, lotto_plus: 70.00, euro_millions: 50.00, euro_millions_plus: 35.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 11, year_number: 2016,lotto: 150.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 120.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 12, year_number: 2016,lotto: 65.00, lotto_plus: 10.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 13, year_number: 2016,lotto: 150.00, lotto_plus: 60.00, euro_millions: 50.00, euro_millions_plus: 100.00 , scratchcard: 190.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 14, year_number: 2016,lotto: 150.00, lotto_plus: 60.00, euro_millions: 50.00, euro_millions_plus: 100.00 , scratchcard: 190.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 15, year_number: 2016,lotto: 150.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 60.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 16, year_number: 2016,lotto: 200.00, lotto_plus: 90.00, euro_millions: 90.00, euro_millions_plus: 80.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 17, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 200.00, euro_millions_plus: 50.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 18, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 120.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 19, year_number: 2016,lotto: 95.00, lotto_plus: 50.00, euro_millions: 112.00, euro_millions_plus: 250.00 , scratchcard: 120.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 20, year_number: 2016,lotto: 150.00, lotto_plus: 100.00, euro_millions: 70.00, euro_millions_plus: 50.00 , scratchcard: 170.00, agent_id: "22222222" )
# user2.sales << Sale.create(week_number: 21, year_number: 2016,lotto: 120.00, lotto_plus: 100.00, euro_millions: 112.00, euro_millions_plus: 50.00 , scratchcard: 35.00, agent_id: "22222222" )


CSV.foreach("#{Rails.root}/db/sales_tab.csv",{:headers=>:first_row}) do |row|
        #column = row[0].split("\t")
        #puts row.to_s
        sale = Sale.new
        sale.agent_id      		= row[0]
        sale.year_number    		= row[1]
        sale.week_number    		= row[2]
        sale.jumpers         		= row[3]
        sale.jackets    		= row[4]
        sale.scarves      	= row[5]
        sale.belts         = row[6]
        sale.shoes    		= row[7]
        sale.save
end
