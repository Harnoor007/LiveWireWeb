class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:index, :about, :upcoming, :show]
    include Devise::Controllers::Helpers
end
