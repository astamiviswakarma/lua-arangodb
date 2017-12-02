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
-- local swagger_simple_queries_api = require "swagger.api.simple_queries_api"

local simple_queries_api= {}
local swagger_mt = {
	__name = "simple_queries_api";
	__index = simple_queries_api;
}

local function new_simple_queries_api(schemes, host, port, basePath, timeout)
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

function simple_queries_api:api_simple_all_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/all",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_any_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/any",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_by_example_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/by-example",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_first_example_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/first-example",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_fulltext_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/fulltext",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_lookup_by_keys_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/lookup-by-keys",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_near_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/near",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_range_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/range",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_remove_by_example_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/remove-by-example",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_remove_by_keys_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/remove-by-keys",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_replace_by_example_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/replace-by-example",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_update_by_example_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/update-by-example",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_within_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/within",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function simple_queries_api:api_simple_within_rectangle_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/simple/within-rectangle",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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
	new = new_simple_queries_api
}