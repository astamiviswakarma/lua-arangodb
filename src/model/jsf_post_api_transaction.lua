--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- jsf_post_api_transaction class
local jsf_post_api_transaction = {}
local jsf_post_api_transaction_mt = {
	__name = "jsf_post_api_transaction";
	__index = jsf_post_api_transaction;
}

local function cast_jsf_post_api_transaction(t)
	return setmetatable(t, jsf_post_api_transaction_mt)
end

local function new_jsf_post_api_transaction(action, collections, intermediate_commit_count, intermediate_commit_size, lock_timeout, max_transaction_size, params, wait_for_sync)
	return cast_jsf_post_api_transaction({
		["action"] = action;
		["collections"] = collections;
		["intermediateCommitCount"] = intermediate_commit_count;
		["intermediateCommitSize"] = intermediate_commit_size;
		["lockTimeout"] = lock_timeout;
		["maxTransactionSize"] = max_transaction_size;
		["params"] = params;
		["waitForSync"] = wait_for_sync;
	})
end

return {
	cast = cast_jsf_post_api_transaction;
	new = new_jsf_post_api_transaction;
}
