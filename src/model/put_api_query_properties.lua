--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- put_api_query_properties class
local put_api_query_properties = {}
local put_api_query_properties_mt = {
	__name = "put_api_query_properties";
	__index = put_api_query_properties;
}

local function cast_put_api_query_properties(t)
	return setmetatable(t, put_api_query_properties_mt)
end

local function new_put_api_query_properties(enabled, max_query_string_length, max_slow_queries, slow_query_threshold, track_bind_vars, track_slow_queries)
	return cast_put_api_query_properties({
		["enabled"] = enabled;
		["maxQueryStringLength"] = max_query_string_length;
		["maxSlowQueries"] = max_slow_queries;
		["slowQueryThreshold"] = slow_query_threshold;
		["trackBindVars"] = track_bind_vars;
		["trackSlowQueries"] = track_slow_queries;
	})
end

return {
	cast = cast_put_api_query_properties;
	new = new_put_api_query_properties;
}
