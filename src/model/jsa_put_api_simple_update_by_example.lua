--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsa_put_api_simple_update_by_example class
local jsa_put_api_simple_update_by_example = {}
local jsa_put_api_simple_update_by_example_mt = {
	__name = "jsa_put_api_simple_update_by_example";
	__index = jsa_put_api_simple_update_by_example;
}

local function cast_jsa_put_api_simple_update_by_example(t)
	return setmetatable(t, jsa_put_api_simple_update_by_example_mt)
end

local function new_jsa_put_api_simple_update_by_example(collection, example, new_value, options)
	return cast_jsa_put_api_simple_update_by_example({
		["collection"] = collection;
		["example"] = example;
		["newValue"] = new_value;
		["options"] = options;
	})
end

return {
	cast = cast_jsa_put_api_simple_update_by_example;
	new = new_jsa_put_api_simple_update_by_example;
}
