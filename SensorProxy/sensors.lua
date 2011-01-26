dofile("configuration.lua")
dofile("readsensor.lua")
dofile("moonrest.lua")

math.randomseed(os.time())

function handle_request(env) 
  map_path_to_resource(env.PATH_INFO, sensors)
end
