class UserStepsController < ApplicationController
  include Wicked::Wizard
  steps :address, :delivery, :confirmation 
end
