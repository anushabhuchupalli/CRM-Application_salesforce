const { createElement } = require('lwc');
const PropertyManagement  = require('c/propertyManagement').default;


describe('c-property-management', () => {
    afterEach(() => {
        // Reset the DOM after each test case
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('TODO: test case generated by CLI command, please fill in test logic', () => {
        // Arrange
        const element = createElement('c-property-management', {
            is: PropertyManagement
        });

        // Act
        document.body.appendChild(element);

        // Assert
        expect(1).toBe(1);
    });
});