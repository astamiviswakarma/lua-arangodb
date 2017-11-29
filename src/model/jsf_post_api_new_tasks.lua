--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsf_post_api_new_tasks class
local jsf_post_api_new_tasks = {}
local jsf_post_api_new_tasks_mt = {
	__name = "jsf_post_api_new_tasks";
	__index = jsf_post_api_new_tasks;
}

local function cast_jsf_post_api_new_tasks(t)
	return setmetatable(t, jsf_post_api_new_tasks_mt)
end

local function new_jsf_post_api_new_tasks(command, name, offset, params, period)
	return cast_jsf_post_api_new_tasks({
		["command"] = command;
		["name"] = name;
		["offset"] = offset;
		["params"] = params;
		["period"] = period;
	})
end

return {
	cast = cast_jsf_post_api_new_tasks;
	new = new_jsf_post_api_new_tasks;
}
