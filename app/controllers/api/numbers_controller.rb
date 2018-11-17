class Api::NumbersController < ApiController
  before_action :set_random_number

  def show
    respond_to do |format|
      format.json { render json: {all_data: {lower_bound: @lower, upper_bound: @upper, random_num: @random_number}}}
    end
  end


  def create
    @num = Number.create!(num_params)
    json_response(@num)
  end
  # def create
  #   @num = Number.new(num_params)
  #   if @num.save
  #     render "api/numbers/show"
  #   else
  #     render json: @num.errors.full_messages, status: :unprocessable_entity
  #   end
  # end

  private

  # generate a random number between the lower and upper bounds
  def set_random_number
    @lower = Number.find(params[:id]).lower_bound
    @upper = Number.find(params[:id]).upper_bound
    @random_number = rand(@lower..@upper)
  end

  def num_params
    params.require(:number).permit(:upper_bound, :lower_bound, :created_by)
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
