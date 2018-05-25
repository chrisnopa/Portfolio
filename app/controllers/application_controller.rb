class ApplicationController < ActionController::Base

  include DeviseWhitelist
  include SetSource


  def current_user
    super || OpenStruct.new(name:"Guest User", first_name:"Guest", last_name:"User", email:"guest.test@test.fr")
  end
end
