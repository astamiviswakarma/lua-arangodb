--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsa_put_api_simple_any class
local jsa_put_api_simple_any = {}
local jsa_put_api_simple_any_mt = {
	__name = "jsa_put_api_simple_any";
	__index = jsa_put_api_simple_any;
}

local function cast_jsa_put_api_simple_any(t)
	return setmetatable(t, jsa_put_api_simple_any_mt)
end

local function new_jsa_put_api_simple_any(collection)
	return cast_jsa_put_api_simple_any({
		["collection"] = collection;
	})
end

return {
	cast = cast_jsa_put_api_simple_any;
	new = new_jsa_put_api_simple_any;
}
