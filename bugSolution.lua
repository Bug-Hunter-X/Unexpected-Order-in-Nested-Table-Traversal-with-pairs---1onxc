local function foo(t, path)
  if not path then path = "" end
  for k, v in pairs(t) do
    local newPath = path .. "." .. k 
    if type(v) == "table" then
      foo(v, newPath)
    else
      print(newPath, v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
