# byteever Sniffs
Collection of PHP_CodeSniffer sniffs for byteever

## Installation

```php
composer require byteever/byteever-sniffs
```

## Usage

### Command line

```bash
./vendor/bin/phpcs --standard=byteever-Default <file>
```

### Config file

PHPCS config file:

```xml
<?xml version="1.0"?>
<ruleset name="byteever Coding Standards">
	<description>My projects ruleset.</description>
	
	<!-- Configs -->
	<config name="minimum_supported_wp_version" value="4.7" />
	<config name="testVersion" value="7.2-" />

	<!-- Rules -->
	<rule ref="byteever-core" />

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
