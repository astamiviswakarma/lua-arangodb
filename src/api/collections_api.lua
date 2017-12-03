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
-- local swagger_collections_api = require "swagger.api.collections_api"

local collections_api= {}
local swagger_mt = {
	__name = "collections_api";
	__index = collections_api;
}

local function new_collections_api(schemes, host, port, basePath, timeout)
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

function collections_api:api_collection_collection_name_checksum_get(collection_name, with_revisions, with_data)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/checksum?withRevisions=%s&withData=%s",
			self.basePath, collection_name, http_util.encodeURIComponent(with_revisions), http_util.encodeURIComponent(with_data));
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

function collections_api:api_collection_collection_name_count_get(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/count",
			self.basePath, collection_name);
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

function collections_api:api_collection_collection_name_delete(collection_name, is_system)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s?isSystem=%s",
			self.basePath, collection_name, http_util.encodeURIComponent(is_system));
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

function collections_api:api_collection_collection_name_figures_get(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/figures",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	if(self.access_token) then
		req.headers:upsert("Authorization", string.format("Bearer %s", self.access_token))
	end

	-- TODO: create a function to select proper content-type
	-- ref: https://github.com/swagger-api/swagger-codegen/pull/6252#issuecomment-321199879
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")


	-- make the HTTP call
	local headers, stream, errno = req:go(self.timeout)
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return cast_jsa_get_api_collection_figures_rc_200(result), headers
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

function collections_api:api_collection_collection_name_get(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s",
			self.basePath, collection_name);
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

function collections_api:api_collection_collection_name_load_indexes_into_memory_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/loadIndexesIntoMemory",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_collection_name_load_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/load",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_collection_name_properties_get(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/properties",
			self.basePath, collection_name);
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

function collections_api:api_collection_collection_name_properties_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/properties",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_collection_name_rename_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/rename",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_collection_name_revision_get(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/revision",
			self.basePath, collection_name);
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

function collections_api:api_collection_collection_name_rotate_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/rotate",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_collection_name_truncate_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/truncate",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_collection_name_unload_put(collection_name)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection/%s/unload",
			self.basePath, collection_name);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function collections_api:api_collection_get(exclude_system)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection?excludeSystem=%s",
			self.basePath, http_util.encodeURIComponent(exclude_system));
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
	if http_status:sub(1,1) == "5" then
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

function collections_api:api_collection_post(json_request_body, wait_for_sync_replication)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/collection?waitForSyncReplication=%s",
			self.basePath, http_util.encodeURIComponent(wait_for_sync_replication));
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
	new = new_collections_api
}