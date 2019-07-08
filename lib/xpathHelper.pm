use strict;
package xpathHelper;

## LISP-style XPath Helpers

## Nodes
sub rootNode {
  my $continuation = "@_";
  return "/$continuation";
}

sub anyNode {
  my $continuation = "@_";
  return "//$continuation";
}

sub currentNode {
  my $continuation = "@_";
  return "/.$continuation";
}

sub parentNode {
  my $continuation = "@_";
  return "/..$continuation";
}

## Tags
sub tag {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "$string1$continuation";
}

sub has {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "[$string1]$continuation";
}

sub isNot {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "not($string1)$continuation";
}

sub tagStartsWith {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "[starts-with(name(), \"$string1\")]$continuation";
}

## Attributes
sub attrExists {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "[\@$string1]$continuation";
}

sub attrEquals {
  my $string1 = "$_[0]";
  my $string2 = "$_[1]";
  my $continuation = "$_[2]";
  return "[\@$string1=\"$string2\"]$continuation";
}

sub attrContains {
  my $string1 = "$_[0]";
  my $string2 = "$_[1]";
  my $continuation = "$_[2]";
  return "[contains(\@$string1, \"$string2\")]$continuation";
}

sub attrGreater {
  my $string1 = "$_[0]";
  my $string2 = "$_[1]";
  my $continuation = "$_[2]";
  return "[\@$string1 > $string2]$continuation";
}

sub attrGreaterEquals {
  my $string1 = "$_[0]";
  my $string2 = "$_[1]";
  my $continuation = "$_[2]";
  return "[\@$string1 >= $string2]$continuation";
}

sub attrLesser {
  my $string1 = "$_[0]";
  my $string2 = "$_[1]";
  my $continuation = "$_[2]";
  return "[\@$string1 < $string2]$continuation";
}

sub attrLesserEquals {
  my $string1 = "$_[0]";
  my $string2 = "$_[1]";
  my $continuation = "$_[2]";
  return "[\@$string1 <= $string2]$continuation";
}

sub attrStartsWith {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "[\@*[starts-with(name(), \"$string1\")]]$continuation";
}

## Text Functions
sub containsText {
  my $string1 = "$_[0]";
  my $continuation = "$_[1]";
  return "[contains(text(), \"$string1\")]$continuation";
}

## AXES

## Document
sub preceding {
  my $continuation = "@_";
  return "preceding::$continuation";
}

sub following {
  my $continuation = "@_";
  return "following::$continuation";
}

## Parents
sub parent {
  my $continuation = "@_";
  return "parent::$continuation";
}

sub ancestor {
  my $continuation = "@_";
  return "ancestor::$continuation";
}

## Self
sub self {
  my $continuation = "@_";
  return "self::$continuation";
}

sub ancestorOrSelf {
  my $continuation = "@_";
  return "ancestor-or-self::$continuation";
}

sub descendantOrSelf {
  my $continuation = "@_";
  return "descendant-or-self::$continuation";
}

## Siblings
sub precedingSibling {
  my $continuation = "@_";
  return "preceding-sibling::$continuation";
}

sub followingSibling {
  my $continuation = "@_";
  return "following-sibling::$continuation";
}

## Children
sub child {
  my $continuation = "@_";
  return "child::$continuation";
}

sub descendant {
  my $continuation = "@_";
  return "descendant::$continuation";
}

1;