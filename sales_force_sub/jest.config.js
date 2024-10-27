const { jestConfig } = require('@salesforce/sfdx-lwc-jest/config');

module.exports = {
    preset: '@lwc/jest-preset',
    moduleFileExtensions: ['js', 'html'],
    transformIgnorePatterns: [
        'node_modules/(?!(lightning|@salesforce)/)',
    ],
};