#!/bin/bash

# Determine what language is targeted with $1 argument
case $1 in

  "js")

    echo "const {
  rootNode, anyNode, currentNode, parentNode, tag, has, isNot, tagStartsWith, attrExists, attrEquals, attrContains, attrGreater, attrGreaterEquals, attrLesser, attrLesserEquals, attrStartsWith, containsText, preceding, following, parent, ancestor, self, ancestorOrSelf, descendantOrSelf, precedingSibling, followingSibling, child, descendant
} = require('./lib/xpathHelper.js')
"

    echo "function testXPath(path) {
  return console.log(path)
}";;

  "python")

    echo "import sys
from lib import xpathHelper

rootNode = xpathHelper.rootNode
anyNode = xpathHelper.anyNode
currentNode = xpathHelper.currentNode
parentNode = xpathHelper.parentNode
tag = xpathHelper.tag
has = xpathHelper.has
isNot = xpathHelper.isNot
tagStartsWith = xpathHelper.tagStartsWith
attrExists = xpathHelper.attrExists
attrEquals = xpathHelper.attrEquals
attrContains = xpathHelper.attrContains
attrGreater = xpathHelper.attrGreater
attrGreaterEquals = xpathHelper.attrGreaterEquals
attrLesser = xpathHelper.attrLesser
attrLesserEquals = xpathHelper.attrLesserEquals
attrStartsWith = xpathHelper.attrStartsWith
containsText = xpathHelper.containsText
preceding = xpathHelper.preceding
following = xpathHelper.following
parent = xpathHelper.parent
ancestor = xpathHelper.ancestor
self = xpathHelper.self
ancestorOrSelf = xpathHelper.ancestorOrSelf
descendantOrSelf = xpathHelper.descendantOrSelf
precedingSibling = xpathHelper.precedingSibling
followingSibling = xpathHelper.followingSibling
child = xpathHelper.child
descendant = xpathHelper.descendant
"

    echo "def testXPath(path):
  print(path)";;

  "ruby")

    echo "require_relative 'lib/xpathHelper'
"

    echo "def testXPath(path)
  return puts path
end";;

  "php")

    echo "<?php

require_once('lib/xpathHelper.php');
"

    echo "function testXPath($""path) {
  echo ($""path . \"\n\");
}"

esac

for file in examples/*; do
  echo "
testXPath(

$(cat $file)

);";
done