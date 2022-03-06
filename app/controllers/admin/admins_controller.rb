class Admin::AdminsController < ApplicationController
  
  
  def menu
  end
  
  def index
    @admins = Admin.all
  end
end
