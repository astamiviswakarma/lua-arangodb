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
-- local swagger_replication_api = require "swagger.api.replication_api"

local replication_api= {}
local swagger_mt = {
	__name = "replication_api";
	__index = replication_api;
}

local function new_replication_api(schemes, host, port, basePath, timeout)
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

function replication_api:api_replication_applier_config_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/applier-config",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_applier_config_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/applier-config",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function replication_api:api_replication_applier_start_put(from)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/applier-start?from=%s",
			self.basePath, http_util.encodeURIComponent(from));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")

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

function replication_api:api_replication_applier_state_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/applier-state",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_applier_stop_put()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/applier-stop",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")

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

function replication_api:api_replication_batch_id_delete(id)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/batch/%s",
			self.basePath, id);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "DELETE")

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

function replication_api:api_replication_batch_id_put(json_request_body, id)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/batch/%s",
			self.basePath, id);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function replication_api:api_replication_batch_post(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/batch",
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

function replication_api:api_replication_cluster_inventory_get(include_system)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/clusterInventory?includeSystem=%s",
			self.basePath, http_util.encodeURIComponent(include_system));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_dump_get(collection, batch_id, chunk_size, from, to, include_system, ticks, flush)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/dump?collection=%s&chunkSize=%s&batchId=%s&from=%s&to=%s&includeSystem=%s&ticks=%s&flush=%s",
			self.basePath, http_util.encodeURIComponent(collection), http_util.encodeURIComponent(chunk_size), http_util.encodeURIComponent(batch_id), http_util.encodeURIComponent(from), http_util.encodeURIComponent(to), http_util.encodeURIComponent(include_system), http_util.encodeURIComponent(ticks), http_util.encodeURIComponent(flush));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_inventory_get(include_system)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/inventory?includeSystem=%s",
			self.basePath, http_util.encodeURIComponent(include_system));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_logger_first_tick_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/logger-first-tick",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_logger_follow_get(from, to, chunk_size, include_system)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/logger-follow?from=%s&to=%s&chunkSize=%s&includeSystem=%s",
			self.basePath, http_util.encodeURIComponent(from), http_util.encodeURIComponent(to), http_util.encodeURIComponent(chunk_size), http_util.encodeURIComponent(include_system));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_logger_state_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/logger-state",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_logger_tick_ranges_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/logger-tick-ranges",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_make_slave_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/make-slave",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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

function replication_api:api_replication_server_id_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/server-id",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

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

function replication_api:api_replication_sync_put(json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/replication/sync",
			self.basePath);
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PUT")
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
	new = new_replication_api
}