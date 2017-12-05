expose("an exposed auth", function()
    local config = require("pl.config")
    local pretty = require("pl.pretty")
    _G.arango = config.read('spec/spec.config')

    local jsf_post_api_database_open_auth = require("arango.model.jsf_post_api_database_open_auth")
    local new_auth_api = require("arango.auth_api")
    local dkjson = require "dkjson"

    describe("Testing authentication to arangodb", function()
        it("should able to login", function()
            local auth = jsf_post_api_database_open_auth.new(_G.arango.username, _G.arango.password)
            local auth_api = new_auth_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port)
            local err, http_status, body = auth_api:api_database_open_auth_post(auth)
            local json = dkjson.decode(body);

            assert.are.same(http_status, '200');
            assert.are.same(err, nil);
            assert.are_not.equals(json.jwt, nil)
            _G.auth_token = json.jwt;
        end)
    end)
end)