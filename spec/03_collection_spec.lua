describe("Testing database apis to arangodb", function()
    local pretty = require("pl.pretty")
    local dkjson = require "dkjson"

    local new_database_api = require("arango.database_api")
    local jsf_get_api_database_new = require("arango.model.jsf_get_api_database_new")
    local jsf_get_api_database_new_users = require("arango.model.jsf_get_api_database_new_users")

    it("should able to get list of database", function()
        assert.are_not.equals(_G.arango, nil)
        assert.are_not.equals(_G.auth_token, nil)
        local database_api = new_database_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port)
        database_api.access_token = _G.auth_token;
        local err, http_status, body = database_api:api_database_get()
        assert.are.same(http_status, '200');
        assert.are.same(err, nil);

        local json = dkjson.decode(body);
        print(pretty.write(json));
    end)
end)