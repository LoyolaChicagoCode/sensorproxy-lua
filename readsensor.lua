function read_sensor(device, byte)
  local f = io.open(device, "r+")
  if f == nil then
    return math.random(0, 255)
  end
  local n = f:read(16)
  return string.byte(n, byte)
end
