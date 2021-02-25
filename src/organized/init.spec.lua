--// Each folder and file implicitly gets a describe block
--// Making an init.spec file will allow us to overwrite that describe block

return function()

    --// This is the root describe block and so we load up Nanoblox
    beforeAll(function(context)
        context.Nanoblox = {
            --// Mock Parser
            Parser = {
                Initialize = function()
                    print("Initialized Parser")
                end,
                Parse = function()
                    return 1
                end,
                Terminate = function()
                    print("Terminated Parser")
                end
            },
            --// Mock Executor
            Executor = {
                Initialize = function()
                    print("Initialized Executor")
                end,
                Execute = function()
                    return 2
                end,
                Terminate = function()
                    print("Terminated Executor")
                end
            }
        }
    end)
    
end