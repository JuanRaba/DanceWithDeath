class ApiController < ApplicationController
  def availablestarttime
    @taken_hours = Appointment.where(date: params[:date]).pluck("starttime")
    @available_hours = 9.upto(18).each.collect { |m| m unless @taken_hours.include?(m) }
    render json: @available_hours.compact
  end
end
