local function keys(t) 
  ks = { }
  for k in next, t, nil do
    table.insert(ks, k)
  end
  return ks
end

local function header_ok()
  print("HTTP/1.1 200 OK")
  print()
end

local function header_notfound()
  print("HTTP/1.1 404 Not Found")
  print()
end

function map_path_to_resource(path, resource)
  pos = resource
  for word in string.gfind(path or "", "[^/]+") do
    pos = pos[word]
  end
  if type(pos) == "table" then
    header_ok()
    print("[" .. table.concat(keys(pos), ",") .. "]")
  elseif type(pos) == "function" then
    header_ok()
    print(string.format("{ value: %u }", pos()))
  else
    header_notfound()
  end
end