# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'flowbite', to: 'https://ga.jspm.io/npm:flowbite@1.6.3/lib/esm/index.js'
pin '@popperjs/core', to: 'https://ga.jspm.io/npm:@popperjs/core@2.11.6/lib/index.js'
pin 'prettier', to: 'https://ga.jspm.io/npm:prettier@2.8.4/standalone.js'
pin 'prettier-plugin-tailwindcss', to: 'https://ga.jspm.io/npm:prettier-plugin-tailwindcss@0.2.3/dist/dev.index.js'
pin 'assert', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/assert.js'
pin 'buffer', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/buffer.js'
pin 'crypto', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/crypto.js'
pin 'fs', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/fs.js'
pin 'module', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/module.js'
pin 'os', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/os.js'
pin 'path', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/path.js'
pin 'prettier/parser-angular', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-angular.js'
pin 'prettier/parser-babel', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-babel.js'
pin 'prettier/parser-espree', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-espree.js'
pin 'prettier/parser-flow', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-flow.js'
pin 'prettier/parser-glimmer', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-glimmer.js'
pin 'prettier/parser-html', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-html.js'
pin 'prettier/parser-meriyah', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-meriyah.js'
pin 'prettier/parser-postcss', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-postcss.js'
pin 'prettier/parser-typescript', to: 'https://ga.jspm.io/npm:prettier@2.8.4/parser-typescript.js'
pin 'process', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process.js'
pin 'tty', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/tty.js'
pin 'url', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/url.js'
pin 'util', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/util.js'
pin 'feather-icons', to: 'https://ga.jspm.io/npm:feather-icons@4.29.0/dist/feather.js'
