--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

--package swagger

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
-- local swagger_auth_api = require "swagger.api.auth_api"

local auth_api= {}
local swagger_mt = {
	__name = "auth_api";
	__index = auth_api;
}

local function new_auth_api(schemes, host, port, basePath, timeout)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	return setmetatable({
		host = host;
		port = port or 80;
		timeout = timeout or 3;
		basePath = basePath or "";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, swagger_mt)
end

function auth_api:api_database_open_auth_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_db/_system/_open/auth",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	req:set_body(dkjson.encode(json_request_body))

	-- make the HTTP call
	local headers, stream, errno = req:go(self.timeout)
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "5" then -- thinking this should not be here anyways
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		stream:shutdown()
		if not body then
			return nil, err, errno2
		end
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_auth_api
}