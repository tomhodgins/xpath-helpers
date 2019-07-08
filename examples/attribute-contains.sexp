(anyNode(
  tag("*",
    attrEquals("id", "attr-contains",
      anyNode(
        tag("*",
          attrContains("class", "target")))))))
