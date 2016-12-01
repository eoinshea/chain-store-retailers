class DashboardController < ApplicationController

	def index

		
	    #start_week = 1 unless  params[:week_number][:start_week]
	    #end_week = 12 unless  params[:week_number][:end_week]

		@user = current_user
		@jumpers = ['Jumpers']
		@jackets = ['Jackets']
		@scarves  = ['Scarves']
		@belts = ['Belts']
		@shoes = ['Shoes']
		@dropdown_values = User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:week_number)

		@start_week =  params[:week_number][:start_week] rescue 1
		@end_week = params[:week_number][:end_week] rescue 52



	    if @start_week.present?
				@jumpers = @jumpers  + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:jumpers)
				@jackets = @jackets + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:jackets)
				@scarves = @scarves + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:scarves)
				@belts = @belts + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:belts)
				@shoes = @shoes + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week , @end_week).order('sales.week_number ASC').pluck(:shoes)
		else
			@jumpers = @jumpers  + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:jumpers)
			@jackets = @jackets + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:jackets)
			@scarves = @scarves + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:scarves)
			@belts = @belts + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:belts)
			@shoes = @shoes + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:shoes)
		end

		



		#@week_number
	end

	#This returns sales after you assign TODO check with admin panel
    #User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:lotto)


	def filter

		start_week = params[:start_week] || 1
	    end_week = params[:end_week] || 52


		@jumpers = @jumpers  + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:jumpers)
		@jumpers = @jumpers + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:jackets)
		@jackets = @jackets + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:scarves)
		@scarves = @scarves + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:belts)
		@shoes = @shoes + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:shoes)

		render '/'
		
	end

end