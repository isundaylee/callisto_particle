$LOAD_PATH.unshift File.join(File.expand_path(File.dirname(__FILE__)), 'lib')

require 'callisto_particle'

ACCESS_TOKEN = "7941c28d0fca23c2efbe75bbd0f0d6ad81210f5c"
DEVICE_ID = "210033000947343432313031"

cp = CallistoParticle::Client.new(ACCESS_TOKEN, DEVICE_ID)
puts cp.get_device_variable('category')

3.times do
    puts cp.call_device_function("setEyes", :on)
    puts cp.call_device_function("setArm", 0)
    sleep(0.5)
    puts cp.call_device_function("setEyes", :off)
    puts cp.call_device_function("setArm", 180)
end
