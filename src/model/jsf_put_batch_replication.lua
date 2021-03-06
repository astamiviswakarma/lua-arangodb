--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsf_put_batch_replication class
local jsf_put_batch_replication = {}
local jsf_put_batch_replication_mt = {
	__name = "jsf_put_batch_replication";
	__index = jsf_put_batch_replication;
}

local function cast_jsf_put_batch_replication(t)
	return setmetatable(t, jsf_put_batch_replication_mt)
end

local function new_jsf_put_batch_replication(ttl)
	return cast_jsf_put_batch_replication({
		["ttl"] = ttl;
	})
end

return {
	cast = cast_jsf_put_batch_replication;
	new = new_jsf_put_batch_replication;
}
