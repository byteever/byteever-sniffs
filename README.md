# byteever PHPCS Configuration
Collection of PHP_CodeSniffer sniffs for byteever

## Installation

```bash
$ composer require --dev byteever/php-coding-standards:dev-master
```

## Usage

### Command line

```bash
$ ./vendor/bin/phpcs .
```

If relying on Composer, edited the `composer.json` file by adding the following:

```json
	"scripts" : {
		"lint": [
			"phpcs ."
		],
	}
```

Then lint via:

```bash
$ composer run lint
```

### IDE Integration

Some IDE integrations of PHPCS fail to register the `byteever-Default` ruleset. In order to rectify this, place `.phpcs.xml.dist` at your project root:

```xml
<?xml version="1.0"?>
<ruleset name="Project Rules">
	<rule ref="byteever-Default" />
</ruleset>
```
