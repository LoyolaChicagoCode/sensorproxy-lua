local function keys(t) 
  ks = { }
  for k in next, t, nil do
    table.insert(ks, k)
  end
  return ks
end

function map_path_to_resource(path, resource)
  pos = resource
  for word in string.gfind(path or "", "[^/]+") do
    pos = pos[word]
  end
  if type(pos) == "table" then
    print("[" .. table.concat(keys(pos), ",") .. "]")
  elseif type(pos) == "function" then
    print(string.format("{ value: %u }", pos()))
  end
end