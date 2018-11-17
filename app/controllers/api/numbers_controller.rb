class Api::NumbersController < ApplicationController
  before_action :set_random_number

  def show
    respond_to do |format|
      format.json { render json: {all_data: {lower_bound: @lower, upper_bound: @upper, random_num: @random_number}}}
    end
  end

  private

  # generate a random number between the lower and upper bounds
  def set_random_number
    @lower = Number.find(params[:id]).lower_bound
    @upper = Number.find(params[:id]).upper_bound
    @random_number = rand(@lower..@upper)
  end
end
