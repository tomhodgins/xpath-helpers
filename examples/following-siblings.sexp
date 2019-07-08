(anyNode(
  tag("*",
    attrEquals("id", "following-siblings",
      anyNode(
        tag("*",
          attrExists("class",
            rootNode(
              followingSibling(
                tag("*"))))))))))
