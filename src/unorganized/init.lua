--// This is very unorganized because everything is inside one file
--// TestEZ supports organization into different files

return function()

    --// Initialize services that are required for testing
    beforeAll(function(context)
        context.parentValue = 100
    end)

    --// Actually perform the test
    it("should print parentValue", function(context)
        print(context.parentValue, context.childValue)

        --// These blocks pass or fail the test depending on the result
        expect(context.parentValue).to.be.ok()
        expect(context.childValue).never.to.be.ok()
    end)

    --// We can have a describe block inside another describe block
    describe("child describe block", function()
        
        --// This time context inherits all the parent properties (parentValue is valid)
        beforeAll(function(context)
            context.childValue = 200
        end)

        it("should print both parentValue and childValue", function(context)
            print(context.parentValue, context.childValue)

            expect(context.parentValue).to.be.ok()
            expect(context.childValue).to.be.ok()
        end)

    end)

end