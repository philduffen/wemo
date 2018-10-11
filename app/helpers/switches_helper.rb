module SwitchesHelper
  def device_state(switch)
    if switch.on?
      'is on!'
    else
      'is off!'
    end
  end

  def checked_box(switch)
    switch.on? ? true : false        
  end

  def find_switch(switch)
    Wemote::Switch.find(switch.name)
  end
end
