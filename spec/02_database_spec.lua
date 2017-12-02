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

        -- local json = dkjson.decode(body);
        -- print(pretty.write(json));
    end)

    it("should able to get list of users database", function()
        assert.are_not.equals(_G.arango, nil)
        assert.are_not.equals(_G.auth_token, nil)
        local database_api = new_database_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port)
        database_api.access_token = _G.auth_token;
        local err, http_status, body = database_api:api_database_user_get()
        assert.are.same(http_status, '200');
        assert.are.same(err, nil);

        -- local json = dkjson.decode(body);
        -- print(pretty.write(json));
    end)


    it("should able to create a database", function()
        assert.are_not.equals(_G.arango, nil)
        assert.are_not.equals(_G.auth_token, nil)

        local database_api = new_database_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port, _G.arango.basePath, _G.arango.timeout)
        database_api.access_token = _G.auth_token;
        local database_new_user = jsf_get_api_database_new_users.new(true, nil, 'openSesame', 'testdbUser')
        local database_new = jsf_get_api_database_new.new('testdb', {database_new_user})
        local err, http_status, body = database_api:api_database_post(database_new)
        assert.are.same(http_status, '201');
        assert.are.same(err, nil);

        -- local json = dkjson.decode(body);
        -- print(pretty.write(json));
    end)
end)