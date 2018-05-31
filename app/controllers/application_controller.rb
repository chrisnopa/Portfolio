class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  # before_action :authenticate_user!, only: [:update, :destroy, :show]
end
