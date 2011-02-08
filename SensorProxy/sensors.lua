dofile("configuration.lua")
dofile("readsensor.lua")
dofile("moonrest.lua")

function handle_request(env) 
  math.randomseed(os.time())
  map_path_to_resource(env.PATH_INFO, sensors)
end
