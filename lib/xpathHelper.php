<?php

// LISP-style XPath Helpers

// Nodes
function rootNode($continuation='') {
  return ('/' . $continuation);
}

function anyNode($continuation='') {
  return ('//' . $continuation);
}

function currentNode($continuation='') {
  return ('/.' . $continuation);
}

function parentNode($continuation='') {
  return ('/..' . $continuation);
}

// Tags
function tag($string1, $continuation='') {
  return ($string1 . $continuation);
}

function has($string1, $continuation='') {
  return ('[' . $string1 . ']' . $continuation);
}

function isNot($string1, $continuation='') {
  return ('not(' . $string1 . ')' . $continuation);
}

function tagStartsWith($string1, $continuation='') {
  return ('[starts-with(name(), "' . $string1 . '")]' . $continuation);
}

// Attributes
function attrExists($string1, $continuation='') {
  return ('[@' . $string1 . ']' . $continuation);
}

function attrEquals($string1, $string2, $continuation='') {
  return ('[@' . $string1 . '="' . $string2 . '"]' . $continuation);
}

function attrContains($string1, $string2, $continuation='') {
  return ('[contains(@' . $string1 . ', "' . $string2 . '")]' . $continuation);
}

function attrGreater($string1, $string2, $continuation='') {
  return ('[@' . $string1 . ' > ' . $string2 . ']' . $continuation);
}

function attrGreaterEquals($string1, $string2, $continuation='') {
  return ('[@' . $string1 . ' >= ' . $string2 . ']' . $continuation);
}

function attrLesser($string1, $string2, $continuation='') {
  return ('[@' . $string1 . ' < ' . $string2 . ']' . $continuation);
}

function attrLesserEquals($string1, $string2, $continuation='') {
  return ('[@' . $string1 . ' <= ' . $string2 . ']' . $continuation);
}

function attrStartsWith($string1, $continuation='') {
  return ('[@*[starts-with(name(), "' . $string1 . '")]]' . $continuation);
}

// Text Functions
function containsText($string1, $continuation='') {
  return ('[contains(text(), "' . $string1 . '")]' . $continuation);
}

// AXES

// Document

function preceding($continuation='') {
  return ('preceding::' . $continuation);
}

function following($continuation='') {
  return ('following::' . $continuation);
}

// Parents
function parent($continuation='') {
  return ('parent::' . $continuation);
}

function ancestor($continuation='') {
  return ('ancestor::' . $continuation);
}

// Self
function self($continuation='') {
  return ('self::' . $continuation);
}

function ancestorOrSelf($continuation='') {
  return ('ancestor-or-self::' . $continuation);
}

function descendantOrSelf($continuation='') {
  return ('descendant-or-self::' . $continuation);
}

// Siblings
function precedingSibling($continuation='') {
  return ('preceding-sibling::' . $continuation);
}

function followingSibling($continuation='') {
  return ('following-sibling::' . $continuation);
}

// Children
function child($continuation='') {
  return ('child::' . $continuation);
}

function descendant($continuation='') {
  return ('descendant::' . $continuation);
}