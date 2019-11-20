# frozen_string_literal: true
class ApplicationController < ActionController::Base

private
  def render_not_found(status=:not_found)
    render plain: "#{status.to_s.titleize} :(", status: status
  end

  def render_forbidden 
    render_not_found(:forbidden)
  end
end
