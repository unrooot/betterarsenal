local config = {
	moduleRepo = ""
}

local modules = loadstring(game:HttpGet(config.moduleRepo, true))()

local function require(module)
	if modules[module] then
		return loadstring(game:HttpGet(modules[module], true))()
	else
		warn(("[betterarsenal] module %s not found!"):format(module))
	end
end

local testModule = require("testModule")
print(testModule.foo)