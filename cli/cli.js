const {
  rootNode, anyNode, currentNode, parentNode, tag, has, isNot, tagStartsWith, attrExists, attrEquals, attrContains, attrGreater, attrGreaterEquals, attrLesser, attrLesserEquals, attrStartsWith, containsText, preceding, following, parent, ancestor, self, ancestorOrSelf, descendantOrSelf, precedingSibling, followingSibling, child, descendant
} = require('../lib/xpathHelper.js')

if (process.argv[2]) {
  console.log(eval(process.argv[2]))
}
