--// This will overwrite our Parser folder's implicit describe block

return function()

    --// Note that context inherits from root's context
    --// Initialize resources before testing
    beforeAll(function(context)
        context.Parser = context.Nanoblox.Parser
        context.Parser.Initialize()
    end)

    --// Release resources after testing has finished
    afterAll(function(context)
        context.Parser.Terminate()
    end)

end