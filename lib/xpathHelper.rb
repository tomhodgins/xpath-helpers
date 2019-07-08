## LISP-style XPath Helpers

## Nodes
def rootNode(continuation='')
  return '/' + continuation
end

def anyNode(continuation='')
  return '//' + continuation
end

def currentNode(continuation='')
  return '/.' + continuation
end

def parentNode(continuation='')
  return '/..' + continuation
end

## Tags
def tag(string1, continuation='')
  return string1 + continuation
end

def has(string1, continuation='')
  return '[' + string1 + ']' + continuation
end

def isNot(string1, continuation='')
  return 'not(' + string1 + ')' + continuation
end

def tagStartsWith(string1, continuation='')
  return '[starts-with(name(), "' + string1 + '")]' + continuation
end

## Attributes
def attrExists(string1, continuation='')
  return '[@' + string1 + ']' + continuation
end

def attrEquals(string1, string2, continuation='')
  return '[@' + string1 + '="' + string2 + '"]' + continuation
end

def attrContains(string1, string2, continuation='')
  return '[contains(@' + string1 + ', "' + string2 + '")]' + continuation
end

def attrGreater(string1, string2, continuation='')
  return '[@' + string1 + ' > ' + string2 + ']' + continuation
end

def attrGreaterEquals(string1, string2, continuation='')
  return '[@' + string1 + ' >= ' + string2 + ']' + continuation
end

def attrLesser(string1, string2, continuation='')
  return '[@' + string1 + ' < ' + string2 + ']' + continuation
end

def attrLesserEquals(string1, string2, continuation='')
  return '[@' + string1 + ' <= ' + string2 + ']' + continuation
end

def attrStartsWith(string1, continuation='')
  return '[@*[starts-with(name(), "' + string1 + '")]]' + continuation
end

## Text Functions
def containsText(string1, continuation='')
  return '[contains(text(), "' + string1 + '")]' + continuation
end

## AXES

## Documents
def preceding(continuation='')
  return 'preceding::' + continuation
end

def following(continuation='')
  return 'following::' + continuation
end

## Parents
def parent(continuation='')
  return 'parent::' + continuation
end

def ancestor(continuation='')
  return 'ancestor::' + continuation
end

## Self
def self(continuation='')
  return 'self::' + continuation
end

def ancestorOrSelf(continuation='')
  return 'ancestor-or-self::' + continuation
end

def descendantOrSelf(continuation='')
  return 'descendant-or-self::' + continuation
end

## Siblings
def precedingSibling(continuation='')
  return 'preceding-sibling::' + continuation
end

def followingSibling(continuation='')
  return 'following-sibling::' + continuation
end

def precedingSibling(continuation='')
  return 'preceding-sibling::' + continuation
end

## Children
def child(continuation='')
  return 'child::' + continuation
end

def descendant(continuation='')
  return 'descendant::' + continuation
end