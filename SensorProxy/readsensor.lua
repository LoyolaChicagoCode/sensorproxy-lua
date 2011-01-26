function read_sensor(b)
  local f = io.open(sensor_device, "r+")
  if f == nil then
    return math.random(0, 255)
  end
  local n = f:read(16)
  return string.byte(n, b)
end
