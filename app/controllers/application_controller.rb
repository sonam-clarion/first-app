class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  require 'mixpanel-ruby'
  $tracker = Mixpanel::Tracker.new('a90816c00c4facfe1a513e9b2d89a9d1')
  $tracker.track('Home page','Page load')

end
