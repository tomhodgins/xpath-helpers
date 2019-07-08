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
