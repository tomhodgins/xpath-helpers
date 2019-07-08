## LISP-style XPath Helpers

## Nodes
def rootNode(continuation=''):
  return '/' + continuation

def anyNode(continuation=''):
  return '//' + continuation

def currentNode(continuation=''):
  return '/.' + continuation

def parentNode(continuation=''):
  return '/..' + continuation

## Tags
def tag(string1, continuation=''):
  return string1 + continuation

def has(string1, continuation=''):
  return '[' + string1 + ']' + continuation

def isNot(string1, continuation=''):
  return 'not(' + string1 + ')' + continuation

def tagStartsWith(string1, continuation=''):
  return '[starts-with(name(), "' + string1 + '")]' + continuation

## Attributes
def attrExists(string1, continuation=''):
  return '[@' + string1 + ']' + continuation

def attrEquals(string1, string2, continuation=''):
  return '[@' + string1 + '="' + string2 + '"]' + continuation

def attrContains(string1, string2, continuation=''):
  return '[contains(@' + string1 + ', "' + string2 + '")]' + continuation

def attrGreater(string1, string2, continuation=''):
  return '[@' + string1 + ' > ' + string2 + ']' + continuation

def attrGreaterEquals(string1, string2, continuation=''):
  return '[@' + string1 + ' >= ' + string2 + ']' + continuation

def attrLesser(string1, string2, continuation=''):
  return '[@' + string1 + ' < ' + string2 + ']' + continuation

def attrLesserEquals(string1, string2, continuation=''):
  return '[@' + string1 + ' <= ' + string2 + ']' + continuation

def attrStartsWith(string1, continuation=''):
  return '[@*[starts-with(name(), "' + string1 + '")]]' + continuation

## Text Functions
def containsText(string1, continuation=''):
  return '[contains(text(), "' + string1 + '")]' + continuation

## AXES

## Documents
def preceding(continuation=''):
  return 'preceding::' + continuation

def following(continuation=''):
  return 'following::' + continuation

## Parents
def parent(continuation=''):
  return 'parent::' + continuation

def ancestor(continuation=''):
  return 'ancestor::' + continuation

## Self
def self(continuation=''):
  return 'self::' + continuation

def ancestorOrSelf(continuation=''):
  return 'ancestor-or-self::' + continuation

def descendantOrSelf(continuation=''):
  return 'descendant-or-self::' + continuation

## Siblings
def precedingSibling(continuation=''):
  return 'preceding-sibling::' + continuation

def followingSibling(continuation=''):
  return 'following-sibling::' + continuation

def precedingSibling(continuation=''):
  return 'preceding-sibling::' + continuation

## Children
def child(continuation=''):
  return 'child::' + continuation

def descendant(continuation=''):
  return 'descendant::' + continuation