--// This is our Basic Test describe block

return function()

    it("should return 2", function(context)
        local result = context.Executor.Execute()

        expect(result).to.be.equal(2)
    end)

end