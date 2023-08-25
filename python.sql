{
	// Place your snippets for python here. Each snippet is defined under a snippet name and has a prefix, body and 
	// description. The prefix is what is used to trigger the snippet and the body will be expanded and inserted. Possible variables are:
	// $1, $2 for tab stops, $0 for the final cursor position, and ${1:label}, ${2:another} for placeholders. Placeholders with the 
	// same ids are connected.
	// Example:
	// "Print to console": {
	// 	"prefix": "log",
	// 	"body": [
	// 		"console.log('$1');",
	// 		"$2"
	// 	],
	// 	"description": "Log output to console"
	// }

	"python - Open file for reading": {
		"prefix": "python-readfile",
		"body": [
			"with open($1) as f:",
			"\ttext = f.read()" 
		],
		"description": "Open file for reading in a with statement"
	},
	"python - Open file for writing": {
		"prefix": "python-writefile",
		"body": [
			"with open($1, w) as f:",
			"\tf.write($2)" 
		],
		"description": "Open file for writing using a with statement"
	},
	"python - Encoding statement": {
		"prefix": "python-cod",
		"body": "# -*- coding: utf-8 -*-",
		"description": "File encoding statement"
	},
	"python - File header comment": {
		"prefix": "python-fileheader",
		"body": [
			"# -*- coding: utf-8 -*-",
			"#",
			"#  $TM_FILENAME",
			"#  ${2:project}",
			"#",
			"#  Created by André Berg on $CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE.",
			"#  Copyright $CURRENT_YEAR Iris VFX. All rights reserved.",
			"#",
			"#  andre@irisvfx.com",
			"#",
			"# pylint: disable-msg=F0401"
		]
	},
	"python - Abstract method": {
		"prefix": "python-abstractmethod",
		"body": [
			"def ${1:name}(self):",
			"\traise NotImplementedError(\"This method is abstract. To provide a concrete implementation override this method in a subclass.\")"
		],
		"description": "Abstract method body"
	},
	"python - Print function variable": {
		"prefix": "python-pvar",
		"body": [
			"print('${1:func}: ${2:var} = {}'.format($2))"
		],
		"description": "Print a function local variable"
	},
	"python - Main entry point": {
		"prefix": "python-main",
		"body": [
			"def ${1:main()}:",
			"\t$0",
			"",
			"",
			"if __name__ == '__main__':",
			"\t${1:main()}"
		],
		"description": "Call entry point function if this script is run directly"
	},
	"python - New class with init": {
		"prefix": "python-class1",
		"body": [
			"class ${1:name}${2:(object)}:",
			"\tdef __init__(self, ${3:var}):",
			"\t\tself.${3:var} = ${3:var}",
			"\tdef __str__(self):",
			"\t\treturn '${1:name}@{:#x}: {}'.format(id(self), self.${3:var})"
		],
		"description": "Simple class skeleton with init and str magic methods"
	},
	"python - New class with init and docstring": {
		"prefix": "python-class2",
		"body": [
			"class ${1:name}${2:(object)}:",
			"\t\"\"\" ${3:docstring}",
			"\t\"\"\"",
			"\tdef __init__(self, ${4:var}):",
			"\t\tself.${4:var} = ${4:var}",
			"\tdef __str__(self):",
			"\t\treturn '${1:name}@{:#x}: {}'.format(id(self), self.${4:var})",
		],
		"description": "Class definition with doctsring"
	},
	"python - Function decorator": {
		"prefix": "python-decor",
		"body": [
			"def ${1:name}(fn):",
			"\tdef ${1:name}_wrapper(*args, **kwargs):",
			"\t\tprint('{}: args={} kwargs={}'.format(fn.__name__, args, kwargs))",
			"\t\treturn fn(*args, **kwargs)",
			"\treturn ${1:name}_wrapper"
		],
		"description": "Function decorator"
	},
	"python - Decorated property with encapsulation": {
		"prefix": "python-eprop",
		"body": [
			"@property",
			"def ${1:name}(self):",
			"\treturn self.__${1:name}",
			"@${1:name}.setter",
			"def ${1:name}(self, value):",
			"\tself.__${1:name} = value",
			"@${1:name}.deleter",
			"def ${1:name}(self, value):",
			"\tdel self.__${1:name}"
		],
		"description": "Encapsulated property getter, setter and deleter"
	},
	"python - Decorated property": {
		"prefix": "python-prop1",
		"body": [
			"@property",
			"def ${1:name}(self):",
			"\treturn self.${1:name}",
			"@${1:name}.setter",
			"def ${1:name}(self, value):",
			"\tself.${1:name} = value",
			"@${1:name}.deleter",
			"def ${1:name}(self, value):",
			"\tdel self.${1:name}"
		],
		"description": "Property getter, setter and deleter"
	},
	"python - Decorated property (without deleter)": {
		"prefix": "python-prop2",
		"body": [
			"@property",
			"def ${1:name}(self):",
			"\treturn self.${1:name}",
			"@${1:name}.setter",
			"def ${1:name}(self, value):",
			"\tself.${1:name} = value",
		],
		"description": "Property getter and setter"
	}
}
