# byteever Sniffs

Collection of PHP_CodeSniffer sniffs for ByteEver.

## Installation

```php
composer require byteever/byteever-sniffs
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

Some IDE integrations of PHPCS fail to register the `ByteEver-Default` ruleset. In order to rectify this, place `.phpcs.xml.dist` at your project root:

```xml
<?xml version="1.0"?>
<ruleset name="ByteEver Coding Standards">
	<description>My projects ruleset.</description>

	<!-- Configs -->
	<config name="minimum_supported_wp_version" value="4.7" />
	<config name="testVersion" value="7.2-" />

	<!-- Rules -->
	<rule ref="ByteEver-Defaults" />

	<rule ref="WordPress.WP.I18n">
		<properties>
			<property name="text_domain" type="array" value="new-text-domain" />
		</properties>
	</rule>

	<rule ref="PHPCompatibility">
		<exclude-pattern>tests/</exclude-pattern>
	</rule>
</ruleset>
```
