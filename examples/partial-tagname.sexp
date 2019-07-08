(anyNode(
  tag("*",
    attrEquals("id", "partial-tagname",
      anyNode(
        tag("*",
          tagStartsWith("custom-")))))))
