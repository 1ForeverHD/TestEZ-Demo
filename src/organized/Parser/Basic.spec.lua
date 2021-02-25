--// This is our Basic Test describe block

return function()

    it("should return 1", function(context)
        local result = context.Parser.Parse()

        expect(result).to.be.equal(1)
    end)

end