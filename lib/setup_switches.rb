# require 'wemote'

module SetupSwitches

  def setup_switches
    switches = Wemote::Switch.all
    add_switches(switches)
  end

  def add_switches(switches)
    switches.each do |s|
      # s.host and s.name exists in db
      next if Switch.where(name: s.name).any?
      switch = Switch.new(name: s.name)
      return unless switch.save
    end
  end
end
