--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- put_api_simple_remove_by_keys_opts class
local put_api_simple_remove_by_keys_opts = {}
local put_api_simple_remove_by_keys_opts_mt = {
	__name = "put_api_simple_remove_by_keys_opts";
	__index = put_api_simple_remove_by_keys_opts;
}

local function cast_put_api_simple_remove_by_keys_opts(t)
	return setmetatable(t, put_api_simple_remove_by_keys_opts_mt)
end

local function new_put_api_simple_remove_by_keys_opts(return_old, silent, wait_for_sync)
	return cast_put_api_simple_remove_by_keys_opts({
		["returnOld"] = return_old;
		["silent"] = silent;
		["waitForSync"] = wait_for_sync;
	})
end

return {
	cast = cast_put_api_simple_remove_by_keys_opts;
	new = new_put_api_simple_remove_by_keys_opts;
}
