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
