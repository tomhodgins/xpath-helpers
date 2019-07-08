(anyNode(
  tag("*",
    attrEquals("id", "preceding-siblings",
      anyNode(
        tag("*",
          attrExists("class",
            rootNode(
              precedingSibling(
                tag("*"))))))))))
