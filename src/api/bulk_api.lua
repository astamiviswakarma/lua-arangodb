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
-- local swagger_bulk_api = require "swagger.api.bulk_api"

local bulk_api= {}
local swagger_mt = {
	__name = "bulk_api";
	__index = bulk_api;
}

local function new_bulk_api(schemes, host, port, basePath, timeout)
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

function bulk_api:api_batch_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/batch",
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
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function bulk_api:api_export_post(json_request_body, collection)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/export?collection=%s",
			self.basePath, http_util.encodeURIComponent(collection));
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
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function bulk_api:api_importdocument_post(json_request_body, collection, from_prefix, to_prefix, overwrite, wait_for_sync, on_duplicate, complete, details)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/import#document?collection=%s&fromPrefix=%s&toPrefix=%s&overwrite=%s&waitForSync=%s&onDuplicate=%s&complete=%s&details=%s",
			self.basePath, http_util.encodeURIComponent(collection), http_util.encodeURIComponent(from_prefix), http_util.encodeURIComponent(to_prefix), http_util.encodeURIComponent(overwrite), http_util.encodeURIComponent(wait_for_sync), http_util.encodeURIComponent(on_duplicate), http_util.encodeURIComponent(complete), http_util.encodeURIComponent(details));
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
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function bulk_api:api_importjson_post(json_request_body, type, collection, from_prefix, to_prefix, overwrite, wait_for_sync, on_duplicate, complete, details)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/import#json?type=%s&collection=%s&fromPrefix=%s&toPrefix=%s&overwrite=%s&waitForSync=%s&onDuplicate=%s&complete=%s&details=%s",
			self.basePath, http_util.encodeURIComponent(type), http_util.encodeURIComponent(collection), http_util.encodeURIComponent(from_prefix), http_util.encodeURIComponent(to_prefix), http_util.encodeURIComponent(overwrite), http_util.encodeURIComponent(wait_for_sync), http_util.encodeURIComponent(on_duplicate), http_util.encodeURIComponent(complete), http_util.encodeURIComponent(details));
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
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_bulk_api
}