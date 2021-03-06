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
-- local swagger_graph_api = require "swagger.api.graph_api"

local graph_api= {}
local swagger_mt = {
	__name = "graph_api";
	__index = graph_api;
}

local function new_graph_api(schemes, host, port, basePath, timeout)
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

function graph_api:api_gharial_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_delete()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_edge_collection_name_edge_key_delete()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_edge_collection_name_edge_key_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_edge_collection_name_edge_key_patch(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PATCH")
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

function graph_api:api_gharial_graph_name_edge_collection_name_edge_key_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s/%s",
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

function graph_api:api_gharial_graph_name_edge_collection_name_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
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

function graph_api:api_gharial_graph_name_edge_definition_name_delete()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_edge_definition_name_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge/%s",
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

function graph_api:api_gharial_graph_name_edge_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_edge_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/edge",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
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

function graph_api:api_gharial_graph_name_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_vertex_collection_name_delete()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_vertex_collection_name_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
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

function graph_api:api_gharial_graph_name_vertex_collection_name_vertex_key_delete()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex/%s/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_vertex_collection_name_vertex_key_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex/%s/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_vertex_collection_name_vertex_key_patch(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex/%s/%s",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PATCH")
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

function graph_api:api_gharial_graph_name_vertex_collection_name_vertex_key_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex/%s/%s",
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

function graph_api:api_gharial_graph_name_vertex_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_graph_name_vertex_post()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial/%s/vertex",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

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

function graph_api:api_gharial_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/gharial",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")
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
	new = new_graph_api
}