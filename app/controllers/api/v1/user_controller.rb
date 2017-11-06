class Api::V1::UserController < Api::V1::ApplicationController

  def create_user
    render json: 'code: 400' if check_params(params)
    User.new(params[:name], params[:facebook])
    render json: 'code: 200'
  end

  def check_params(params)
    return false if params.empty?
    return true
  end

end