--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsa_put_api_simple_by_example class
local jsa_put_api_simple_by_example = {}
local jsa_put_api_simple_by_example_mt = {
	__name = "jsa_put_api_simple_by_example";
	__index = jsa_put_api_simple_by_example;
}

local function cast_jsa_put_api_simple_by_example(t)
	return setmetatable(t, jsa_put_api_simple_by_example_mt)
end

local function new_jsa_put_api_simple_by_example(batch_size, collection, example, limit, skip)
	return cast_jsa_put_api_simple_by_example({
		["batchSize"] = batch_size;
		["collection"] = collection;
		["example"] = example;
		["limit"] = limit;
		["skip"] = skip;
	})
end

return {
	cast = cast_jsa_put_api_simple_by_example;
	new = new_jsa_put_api_simple_by_example;
}
