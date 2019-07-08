import sys
sys.path.insert(0, '../lib')
import xpathHelper

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

if len(sys.argv) > 1:
  print(eval(sys.argv[1]))
