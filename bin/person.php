#!/usr/bin/env php
<?php

require_once __DIR__ . '/../src/Person.php';

$john = new Person('John', 'Snow');

echo $john->firsName . \PHP_EOL;
echo $john->lastName . \PHP_EOL;

$john->setAge(24);

echo $john->getAge() . \PHP_EOL;

$mark = new Person('Mark', 'Young');
$mark->setAge(151);

echo $mark->getAge() . \PHP_EOL;