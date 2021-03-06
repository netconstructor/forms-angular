basePath = '../';

files = [
    JASMINE,
    JASMINE_ADAPTER,
    "app/components/jquery/jquery.js",
    "app/components/jquery-ui/ui/jquery-ui.js",
    "app/components/angular/angular.js",
    "app/components/underscore/underscore.js",
    "app/components/angular-ui-bootstrap-bower/ui-bootstrap-tpls.js",
    "app/components/angular-ui-date/src/date.js",
    "app/components/angular-ui-select2/src/select2.js",
    "app/components/select2/select2.js",
    'test/lib/angular/angular-mocks.js',
    'app/js/forms-angular.js',
    'app/js/**/*.js',
    'app/demo/demo.js',
    'app/demo/bespoke-field.js',
    'test/unit/**/*.js'
];

autoWatch = true;

browsers = ['PhantomJS'];

junitReporter = {
    outputFile: 'test_out/unit.xml',
    suite: 'unit'
};
