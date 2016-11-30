class DashboardController < ApplicationController


	def index

		
	    #start_week = 1 unless  params[:week_number][:start_week]
	    #end_week = 12 unless  params[:week_number][:end_week]

	    @user = current_user
		@lotto_array = ['Lotto']
		@lotto_plus_array = ['LottoPlus']
		@euro_millions_array  = ['EuroMillions']
		@euro_millions_plus_array = ['EuroMillionsPlus']
		@scratchcard_array = ['Scratchcard']
		@dropdown_values = User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:week_number)

		@start_week =  params[:week_number][:start_week] rescue 1
	    @end_week = params[:week_number][:end_week] rescue @dropdown_values.last



	    if @start_week.present?
			@lotto_array = @lotto_array  + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:lotto)
			@lotto_plus_array = @lotto_plus_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:lotto_plus)
			@euro_millions_array = @euro_millions_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:euro_millions)
			@euro_millions_plus_array = @euro_millions_plus_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week, @end_week).order('sales.week_number ASC').pluck(:euro_millions_plus)
			@scratchcard_array = @scratchcard_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, @start_week , @end_week).order('sales.week_number ASC').pluck(:scratchcard)
		else
			@lotto_array = @lotto_array  + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:lotto)
			@lotto_plus_array = @lotto_plus_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:lotto_plus)
			@euro_millions_array = @euro_millions_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:euro_millions)
			@euro_millions_plus_array = @euro_millions_plus_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:euro_millions_plus)
			@scratchcard_array = @scratchcard_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:scratchcard)
		end

		



		#@week_number
	end

	#This returns sales after you assign TODO check with admin panel
    #User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?)',current_user.id).order('sales.week_number ASC').pluck(:lotto)


	def filter

		start_week = params[:start_week]
	    end_week = params[:end_week]


		@lotto_array = @lotto_array  + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:lotto)
		@lotto_plus_array = @lotto_plus_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:lotto_plus)
		@euro_millions_array = @euro_millions_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:euro_millions)
		@euro_millions_plus_array = @euro_millions_plus_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:euro_millions_plus)
		@scratchcard_array = @scratchcard_array + User.joins(:sales).where('users.agent_id = sales.agent_id AND users.id = (?) AND sales.week_number BETWEEN (?) AND (?)',current_user.id, start_week, end_week).order('sales.week_number ASC').pluck(:scratchcard)

		render '/'
		
	end

end
