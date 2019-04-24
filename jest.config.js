module.exports = {
    moduleFileExtensions: ['ts', 'js', 'json'],
    transform: {
        '^.+\\.ts': 'ts-jest'
    },
    globals: {
        'ts-jest': {
            tsConfig: 'tsconfig.json'
        }
    },
    testMatch: [
        '**/*\.test\.(ts|tsx|js)',
    ],
    testPathIgnorePatterns: [
        '/node_modules/',
        '/dist/',
        '/test/test_data/*'
    ],
    verbose: true,
    preset: 'ts-jest',
    setupFiles: []
};