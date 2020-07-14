class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :detect_device_variant

  private

  def detect_device_variant
    request.variant = :phone if browser.device.mobile?
    # request.variant = :tablet if browser.device.tablet?
  end
end
