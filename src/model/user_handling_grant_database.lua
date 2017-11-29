--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- user_handling_grant_database class
local user_handling_grant_database = {}
local user_handling_grant_database_mt = {
	__name = "user_handling_grant_database";
	__index = user_handling_grant_database;
}

local function cast_user_handling_grant_database(t)
	return setmetatable(t, user_handling_grant_database_mt)
end

local function new_user_handling_grant_database(grant)
	return cast_user_handling_grant_database({
		["grant"] = grant;
	})
end

return {
	cast = cast_user_handling_grant_database;
	new = new_user_handling_grant_database;
}
