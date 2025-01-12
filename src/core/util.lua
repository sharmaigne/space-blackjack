local util = {}

function util.removeSpaces(str)
    return str:gsub("%s+", "")
end

return util