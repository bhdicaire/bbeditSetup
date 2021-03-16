# BBEdit ESLint

Lint JavaScript within [BBEdit](http://www.barebones.com/products/bbedit/) using [ESLint](http://eslint.org/). Resulting errors and warnings are opened in a results window within BBEdit using the BBEdit command line tool **bbresults** (introduced in [BBEdit 11.6](http://www.barebones.com/support/bbedit/notes-11.6.html)).

The ESLint.bbpackage packages a single script for passing the frontmost document open in BBEdit to ESLint command line interface.

## Requirements

- [BBEdit](http://www.barebones.com/products/bbedit/) version 11.6 or greater (Maybe also TextWrangler?)
- BBEdit command line tools (“BBEdit > Install Command Line Tools”)
- [ESLint CLI](http://eslint.org/docs/user-guide/command-line-interface) installed and configured

## Installation

1. Download and unzip the package: [ESLint.bbpackage_v1.0.0.zip](https://github.com/ollicle/BBEdit-ESLint/raw/master/dist/ESLint.bbpackage_v1.0.0.zip).
2. Double–click the ESLint.bbpackage, BBEdit will prompt you to install (or update), and restart.

The package file will be copied to the Packages directory in BBEdit’s Application Support directory. Delete it from here should you wish uninstall later.

### Bring your own ESLint

As noted in the requirements, this package does not install ESLint itself. The contained script presumes `eslint` is [installed](http://eslint.org/docs/user-guide/command-line-interface) and [configured](http://eslint.org/docs/user-guide/configuring) with a configuration file (such as .eslintrc.js or a `eslintConfig` field in a package.json).

## Usage

Once installed the script **Lint JavaScript** will appear in the BBEdit scripts menu. In addition **Lint JavaScript** will appear in the Scripts palette where you can assign your own keyboard shortcut.

Open a JavaScript file in BBEdit and trigger **Lint JavaScript**. A BBEdit results window should open listing any ESLint feedback. If there are no warnings or errors to report nothing will happen.

## Building the package

In your Terminal:

	cd BBEdit-ESLint/
	make

to also install the fresh build:

	make install