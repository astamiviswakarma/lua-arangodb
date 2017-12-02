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
-- local swagger_foxx_api = require "swagger.api.foxx_api"

local foxx_api= {}
local swagger_mt = {
	__name = "foxx_api";
	__index = foxx_api;
}

local function new_foxx_api(schemes, host, port, basePath, timeout)
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

function foxx_api:api_foxx_commit_post(replace)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/commit?replace=%s",
			self.basePath, http_util.encodeURIComponent(replace));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")

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

function foxx_api:api_foxx_configuration_get(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/configuration?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_configuration_patch(json_request_body, mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/configuration?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PATCH")
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

function foxx_api:api_foxx_configuration_put(json_request_body, mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/configuration?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_dependencies_get(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/dependencies?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_dependencies_patch(json_request_body, mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/dependencies?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PATCH")
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

function foxx_api:api_foxx_dependencies_put(json_request_body, mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/dependencies?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_development_delete(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/development?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_development_post(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/development?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")

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

function foxx_api:api_foxx_download_post(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/download?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")

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

function foxx_api:api_foxx_get()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx",
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

function foxx_api:api_foxx_post(mount, development, setup, legacy)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx?mount=%s&development=%s&setup=%s&legacy=%s",
			self.basePath, http_util.encodeURIComponent(mount), http_util.encodeURIComponent(development), http_util.encodeURIComponent(setup), http_util.encodeURIComponent(legacy));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")

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

function foxx_api:api_foxx_readme_get(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/readme?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_scripts_get(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/scripts?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_scripts_name_post(name, json_request_body)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/scripts/%s?name=%s",
			self.basePath, http_util.encodeURIComponent(name));
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

function foxx_api:api_foxx_service_delete(mount, teardown)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/service?mount=%s&teardown=%s",
			self.basePath, http_util.encodeURIComponent(mount), http_util.encodeURIComponent(teardown));
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

function foxx_api:api_foxx_service_get(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/service?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_service_patch(mount, teardown, setup, legacy)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/service?mount=%s&teardown=%s&setup=%s&legacy=%s",
			self.basePath, http_util.encodeURIComponent(mount), http_util.encodeURIComponent(teardown), http_util.encodeURIComponent(setup), http_util.encodeURIComponent(legacy));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "PATCH")

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

function foxx_api:api_foxx_service_put(mount, teardown, setup, legacy)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/service?mount=%s&teardown=%s&setup=%s&legacy=%s",
			self.basePath, http_util.encodeURIComponent(mount), http_util.encodeURIComponent(teardown), http_util.encodeURIComponent(setup), http_util.encodeURIComponent(legacy));
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

function foxx_api:api_foxx_swagger_get(mount)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/swagger?mount=%s",
			self.basePath, http_util.encodeURIComponent(mount));
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

function foxx_api:api_foxx_tests_post(mount, reporter, idiomatic)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/_api/foxx/tests?mount=%s&reporter=%s&idiomatic=%s",
			self.basePath, http_util.encodeURIComponent(mount), http_util.encodeURIComponent(reporter), http_util.encodeURIComponent(idiomatic));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "POST")

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
	new = new_foxx_api
}