describe("Testing database apis to arangodb", function()
    local pretty = require("pl.pretty")
    local tablex = require("pl.tablex")
    local dkjson = require "dkjson"

    local new_database_api = require("arango.database_api")
    local new_collections_api = require("arango.collections_api")
    local jsf_post_api_collection = require("arango.model.jsf_post_api_collection")
    local jsf_post_api_collection_opts = require("arango.model.jsf_post_api_collection_opts")

    it("should able to get testdb database", function()
        assert.are_not.equals(_G.arango, nil)
        assert.are_not.equals(_G.auth_token, nil)
        local database_api = new_database_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port)
        database_api.access_token = _G.auth_token;
        local err, http_status, body = database_api:api_database_get()
        assert.are.same(http_status, '200');
        assert.are.same(err, nil);

        local json = dkjson.decode(body);
        assert.are.equals(type(json.result), 'table')
        assert.are_not.equals(tablex.find(json.result, "testdb"), nil)
        -- print(pretty.write(json));
    end)

    it("should able to create collection inside database", function()
        assert.are_not.equals(_G.arango, nil)
        assert.are_not.equals(_G.auth_token, nil)
        local collection_api = new_collections_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port, _G.arango.database)
        collection_api.access_token = _G.auth_token;
        local collection_opts = jsf_post_api_collection_opts.new()
        local collection = jsf_post_api_collection.new(nil, nil, false, false, nil, collection_opts, 'test_coll', nil, nil, nil, 2, nil)
        local err, http_status, body = collection_api:api_collection_get('true')
        assert.are.same('200', http_status);
        assert.are.same(err, nil);
        local json = dkjson.decode(body);
        print(pretty.write(json));
    end)

    it("should able to get all collections inside database", function()
        assert.are_not.equals(_G.arango, nil)
        assert.are_not.equals(_G.auth_token, nil)
        local collection_api = new_collections_api.new(_G.arango.scheme, _G.arango.host, _G.arango.port, _G.arango.database)
        collection_api.access_token = _G.auth_token;
        local err, http_status, body = collection_api:api_collection_get('true')
        assert.are.same('200', http_status);
        assert.are.same(err, nil);
        local json = dkjson.decode(body);
        print(pretty.write(json));
    end)
end)