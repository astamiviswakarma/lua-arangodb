expose("an exposed auth", function()
    local jsf_post_api_database_open_auth = require("arango.model.jsf_post_api_database_open_auth")
    local new_auth_api = require("arango.auth_api")
    local dkjson = require "dkjson"
    local inspect = require("inspect")

    describe("Testing authentication to arangodb", function()
        it("should able to login", function()
            local auth = jsf_post_api_database_open_auth.new("root", "openSesame")
            local auth_api = new_auth_api.new({"http"}, "localhost", 8000)
            local err, http_status, body = auth_api:api_database_open_auth_post(auth)
            local json = dkjson.decode(body);

            assert.are.same(http_status, '200');
            assert.are.same(err, nil);
            assert.are_not.equals(json.jwt, nil)
            _G.auth_token = json.jwt;
        end)
    end)
end)