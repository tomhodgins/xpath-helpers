(anyNode(
  tag("*",
    attrEquals("id", "parent",
      anyNode(
        tag("*",
          attrExists("class",
            parentNode())))))))
