--// This will overwrite our Executor folder's implicit describe block

return function()

    --// Note that context inherits from root's context
    --// Initialize resources before testing
    beforeAll(function(context)
        context.Executor = context.Nanoblox.Executor
        context.Executor.Initialize()
    end)

    --// Release resources after testing has finished
    afterAll(function(context)
        context.Executor.Terminate()
    end)

end