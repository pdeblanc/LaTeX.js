#!/usr/local/bin/lsc -cj

name: 'latexjs'
description: 'A simple PEG.js parser for LaTeX'
version: '0.1.0'

author:
    'name': 'Michael Brade'
    'email': 'brade@kde.org'

keywords:
    'pegjs'
    'latex'
    'parser'


scripts:
    clean: 'rimraf dist;'
    build: 'mkdirp dist; pegjs src/latex-parser.pegjs dist/latex-parser.js; lsc -c -o dist src/html-generator.ls'
    test: 'mocha test/_*.ls test/tests.ls;'


devDependencies:
    'livescript': '1.4.x'

    'browserify': '12.x'
    'babelify': '7.x'


    ### building

    'pegjs': '0.9.x'
    'mkdirp': '0.5.x'
    'rimraf': '2.5.x'


    ### testing

    'mocha': '2.3.x'
    'chai': '3.x'
    'chai-as-promised': '5.x'
    'js-beautify': '1.5.x'


repository:
    type: 'git'
    url: 'git+https://github.com/michael-brade/pegjs-latex.git'

license: 'MIT'

bugs:
    url: 'https://github.com/michael-brade/pegjs-latex/issues'

homepage: 'https://github.com/michael-brade/pegjs-latex#readme'
