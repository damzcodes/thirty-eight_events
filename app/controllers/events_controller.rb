class EventsController < ApplicationController
	before_action :authenticate_admin!

	def new
		@event = Event.new
	end

	def create
		@event = Event.create!(event_params)
		redirect_to root_path
  rescue ActiveRecord::RecordInvalid => e
    @link = e.record
    render :new
	end

	def show
		@event = Event.find_by(:id)
	end

	private

	def event_params
		params.require(:event).permit(:name, :description, :time, :date)
	end
end
