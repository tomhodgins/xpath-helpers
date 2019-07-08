<?php

require_once('lib/xpathHelper.php');

function testXPath($path) {
  echo ($path . "\n");
}

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "tagname",
      anyNode(
        tag("li"))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "any",
      anyNode(
        tag("*"))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "attr-number",
      anyNode(
        tag("*",
          attrGreaterEquals("data-price", "5")))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "attr-contains",
      anyNode(
        tag("*",
          attrContains("class", "target")))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "attr-exact",
      anyNode(
        tag("*",
          attrEquals("class", "target")))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "attribute",
      anyNode(
        tag("*",
          attrExists("class")))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "children",
      anyNode(
        tag("*",
          has(
            tag("*",
              has("3")))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "following-sibling",
      anyNode(
        tag("*",
          attrExists("class",
            rootNode(
              followingSibling(
                tag("*",
                  has("1")))))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "following-siblings",
      anyNode(
        tag("*",
          attrExists("class",
            rootNode(
              followingSibling(
                tag("*"))))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "has",
      anyNode(
        tag("*",
          has(
            tag("strong"))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "heading",
      anyNode(
        tag("*",
          "[substring-after(name(), h) > 0]"))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "last-child",
      anyNode(
        tag("*",
          has(
            isNot(
              followingSibling(
                tag("*",
                  has("1")))))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "parent",
      anyNode(
        tag("*",
          attrExists("class",
            parentNode())))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "partial-attr",
      anyNode(
        tag("*",
          attrStartsWith("data-custom-")))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "partial-tagname",
      anyNode(
        tag("*",
          tagStartsWith("custom-")))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "preceding-sibling",
      anyNode(
        tag("*",
          attrExists("class",
            rootNode(
              precedingSibling(
                tag("*",
                  has("1")))))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "preceding-siblings",
      anyNode(
        tag("*",
          attrExists("class",
            rootNode(
              precedingSibling(
                tag("*"))))))))))

);

testXPath(

(anyNode(
  tag("*",
    attrEquals("id", "text-contains",
      anyNode(
        tag("*",
          containsText("item")))))))

);
