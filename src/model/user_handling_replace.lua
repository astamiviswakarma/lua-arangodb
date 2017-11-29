--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- user_handling_replace class
local user_handling_replace = {}
local user_handling_replace_mt = {
	__name = "user_handling_replace";
	__index = user_handling_replace;
}

local function cast_user_handling_replace(t)
	return setmetatable(t, user_handling_replace_mt)
end

local function new_user_handling_replace(active, extra, passwd)
	return cast_user_handling_replace({
		["active"] = active;
		["extra"] = extra;
		["passwd"] = passwd;
	})
end

return {
	cast = cast_user_handling_replace;
	new = new_user_handling_replace;
}
