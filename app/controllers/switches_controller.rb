class SwitchesController < ApplicationController
  include SetupSwitches
  before_action :setup_switches

  def index
    @switches = Switch.all
  end

  def show
    @switch = Switch.find(params[:id])
  end

  def edit
    @switch = Switch.find(params[:id])
    Wemote::Switch.find(@switch.name).toggle!
    redirect_to @switch
  end

  def toggle
    @switch = Switch.find(params[:switch])
    Wemote::Switch.find(@switch.name).toggle!
    redirect_to @switch
  end

end
