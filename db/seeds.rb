User.create!(email: 'shropshire@example.com', password: 'shropshire', password_confirmation: 'shropshire', agent_id: "2x4962" ,approved: true )
User.create!(email: 'glasgow@example.com', password: 'glasgowglasgow', password_confirmation: 'glasgowglasgow', agent_id: "3k6j3l" ,approved: true )
User.create!(email: 'essex@example.com', password: 'essexessex', password_confirmation: 'essexessex', agent_id: "adf67k"  ,approved: false)
User.create!(email: 'london@example.com', password: 'londonlondon', password_confirmation: 'londonlondon', agent_id: "ch5235",approved: false  )
User.create!(email: 'cardiff@example.com', password: 'cardiffcardiff', password_confirmation: 'cardiffcardiff', agent_id: "sghbx23" ,approved: false )

counter  = 0
agent_ids = ["2x4962","3k6j3l","adf67k","ch5235","sghbx23"]
agent_ids.each do |agent_id|
(1..52).each do |week_num|

                        sale = Sale.new
                        sale.agent_id      		  = agent_id
                        sale.year_number    		= 2016
                        sale.week_number    		= week_num
                        sale.jumpers         		=  rand(50)
                        sale.jackets    		    = rand(50)
                        sale.scarves      	    = rand(50)
                        sale.belts              = rand(50)
                        sale.shoes    		      = rand(50)
                        sale.save
                        user = User.where(agent_id: agent_id).first
                        user.sales << sale
                        user.save
                        # if counter == 53
                        #         counter = 0
                        #         exit
                        # end
                        # counter = counter + 1
          end
end
