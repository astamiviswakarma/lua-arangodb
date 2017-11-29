--[[ 
  ArangoDB
 
  ArangoDB REST API Interface
 
  OpenAPI spec version: 1.0
  
  Generated by: https://github.com/swagger-api/swagger-codegen.git
]]

-- explain_options class
local explain_options = {}
local explain_options_mt = {
	__name = "explain_options";
	__index = explain_options;
}

local function cast_explain_options(t)
	return setmetatable(t, explain_options_mt)
end

local function new_explain_options(all_plans, max_number_of_plans, optimizer_rules)
	return cast_explain_options({
		["allPlans"] = all_plans;
		["maxNumberOfPlans"] = max_number_of_plans;
		["optimizer.rules"] = optimizer_rules;
	})
end

return {
	cast = cast_explain_options;
	new = new_explain_options;
}
