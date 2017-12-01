local inspect = require("inspect")
local jsf_post_api_database_open_auth = require("arango.model.jsf_post_api_database_open_auth")
local new_auth_api = require("arango.auth_api")
local dkjson = require "dkjson"
describe("Testing authentication to arangodb", function()
    it("should able to login", function()
        local auth = jsf_post_api_database_open_auth.new("root", "openSesame")
        local auth_api = new_auth_api.new("localhost",8000,"",{"http"})
        local err, http_status, body = auth_api:api_database_open_auth_post(auth)
        local json = dkjson.decode(body);
        assert.are.same(http_status, '200');
        assert.are.same(err, nil);
        print(inspect(err))
        print(inspect(http_status))
        print(inspect(json))
    end)
end)