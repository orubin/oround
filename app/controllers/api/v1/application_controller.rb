class Api::V1::ApplicationController < ActionController::Base
  # rescue_from Gett::Error::Base, with: :handle_error

  before_action :set_default_json_format
  # before_action :set_current_user, only: [:create, :update]
  #
  # attr_accessor :errored

  protected

  # def set_current_user
  #   User.current = current_user
  # end

  def set_default_json_format
    request.format = :json
  end

  # def handle_error(error, notify = false)
  #   @errored = true
  #   Gett::Ops.report_error(error, parameters: params) if notify && Rails.env.production?
  #   return if performed?
  #   render_error error
  # end

  def render_error(error)
    status = error.try(:status_code) || 500
    render json: error.to_json, status: status
  end
end
