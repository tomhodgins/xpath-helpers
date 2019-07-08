// LISP-style XPath Helpers

// Nodes
module.exports.rootNode = function(continuation='') {
  return `/${continuation}`
}

module.exports.anyNode = function(continuation='') {
  return `//${continuation}`
}

module.exports.currentNode = function(continuation='') {
  return `/.${continuation}`
}

module.exports.parentNode = function(continuation='') {
  return `/..${continuation}`
}

// Tags
module.exports.tag = function(string1, continuation='') {
  return `${string1}${continuation}`
}

module.exports.has = function(string1, continuation='') {
  return `[${string1}]${continuation}`
}

module.exports.isNot = function(string1, continuation='') {
  return `not(${string1})${continuation}`
}

module.exports.tagStartsWith = function(string1, continuation='') {
  return `[starts-with(name(), "${string1}")]${continuation}`
}

// Attributes
module.exports.attrExists = function(string1, continuation='') {
  return `[@${string1}]${continuation}`
}

module.exports.attrEquals = function(string1, string2, continuation='') {
  return `[@${string1}="${string2}"]${continuation}`
}

module.exports.attrContains = function(string1, string2, continuation='') {
  return `[contains(@${string1}, "${string2}")]${continuation}`
}

module.exports.attrGreater = function(string1, string2, continuation='') {
  return `[@${string1} > ${string2}]${continuation}`
}

module.exports.attrGreaterEquals = function(string1, string2, continuation='') {
  return `[@${string1} >= ${string2}]${continuation}`
}

module.exports.attrLesser = function(string1, string2, continuation='') {
  return `[@${string1} < ${string2}]${continuation}`
}

module.exports.attrLesserEquals = function(string1, string2, continuation='') {
  return `[@${string1} <= ${string2}]${continuation}`
}

module.exports.attrStartsWith = function(string1, continuation='') {
  return `[@*[starts-with(name(), "${string1}")]]${continuation}`
}

// Text Functions
module.exports.containsText = function(string1, continuation='') {
  return `[contains(text(), "${string1}")]${continuation}`
}

// AXES

// Document
module.exports.preceding = function(continuation='') {
  return `preceding::${continuation}`
}

module.exports.following = function(continuation='') {
  return `following::${continuation}`
}

// Parents
module.exports.parent = function(continuation='') {
  return `parent::${continuation}`
}

module.exports.ancestor = function(continuation='') {
  return `ancestor::${continuation}`
}

// Self
module.exports.self = function(continuation='') {
  return `self::${continuation}`
}

module.exports.ancestorOrSelf = function(continuation='') {
  return `ancestor-or-self::${continuation}`
}

module.exports.descendantOrSelf = function(continuation='') {
  return `descendant-or-self::${continuation}`
}

// Siblings
module.exports.precedingSibling = function(continuation='') {
  return `preceding-sibling::${continuation}`
}

module.exports.followingSibling = function(continuation='') {
  return `following-sibling::${continuation}`
}

// Children
module.exports.child = function(continuation='') {
  return `child::${continuation}`
}

module.exports.descendant = function(continuation='') {
  return `descendant::${continuation}`
}