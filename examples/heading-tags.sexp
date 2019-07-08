(anyNode(
  tag("*",
    attrEquals("id", "heading",
      anyNode(
        tag("*",
          "[substring-after(name(), h) > 0]"))))))
