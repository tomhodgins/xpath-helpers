(anyNode(
  tag("*",
    attrEquals("id", "partial-attr",
      anyNode(
        tag("*",
          attrStartsWith("data-custom-")))))))
