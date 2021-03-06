--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsf_post_api_cursor_rc_201 class
local jsf_post_api_cursor_rc_201 = {}
local jsf_post_api_cursor_rc_201_mt = {
	__name = "jsf_post_api_cursor_rc_201";
	__index = jsf_post_api_cursor_rc_201;
}

local function cast_jsf_post_api_cursor_rc_201(t)
	return setmetatable(t, jsf_post_api_cursor_rc_201_mt)
end

local function new_jsf_post_api_cursor_rc_201(cached, code, count, error, extra, has_more, id, result)
	return cast_jsf_post_api_cursor_rc_201({
		["cached"] = cached;
		["code"] = code;
		["count"] = count;
		["error"] = error;
		["extra"] = extra;
		["hasMore"] = has_more;
		["id"] = id;
		["result"] = result;
	})
end

return {
	cast = cast_jsf_post_api_cursor_rc_201;
	new = new_jsf_post_api_cursor_rc_201;
}
